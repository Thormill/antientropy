class UsersController < ApplicationController
  before_filter :require_login_from_http_basic, :only => [:login_from_http_basic]
  before_filter :require_login, :only => [:index]
  skip_before_filter :require_login, :only => [:new, :create, :activate, :login_from_http_basic]

  # GET /users
  def index
    @user = User.first
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to(:login, :notice => 'Registration successfull. Check your email for activation instructions.')
    else
      render :action => "new"
    end
  end

  # PUT /users/1
  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      redirect_to(@user, :notice => 'User was successfully updated.')
    else
      render :action => "edit"
    end
  end

  # DELETE /users/1
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to(users_url)
  end

  def activate
    if @user = User.load_from_activation_token(params[:id])
      @user.activate!
      redirect_to(login_path, :notice => 'User was successfully activated.')
    else
      not_authenticated
    end
  end

  # The before filter requires authentication using HTTP Basic,
  # And this action redirects and sets a success notice.
  def login_from_http_basic
    redirect_to users_path, :notice => 'Login from basic auth successful'
  end
end