class Admin::UsersController < ApplicationController
  respond_to :js

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if(@user.save)
      @user.activate!
      redirect_to admin_users_path
    else
      redirect_to new_admin_user_path(@user)
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to admin_users_path
    else
      render :action => "edit"
    end
  end

  def activate
    @user = User.find(params[:id])
    @user.activate!
  end

  def show
    @user = User.find(params[:id])
  end

  def delete
    @user = User.find(params[:id])
    @user.destroy
    redirect_to(admin_users_url)
  end

end
