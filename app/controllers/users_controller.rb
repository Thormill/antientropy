class UsersController < ApplicationController
  before_filter :require_login, :only => [:index, :update]
  skip_before_filter :require_login, :only => [:new, :create, :activate, :login_from_http_basic]

  def create
    @user = User.new(params[:user])
    @notice = @user.save ? I18n.t('user.registration.notice_done') : I18n.t('user.registration.notice_error')

    respond_to do |format|
      format.js
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

  def activate
    if @user = User.load_from_activation_token(params[:id])
      @user.activate!
      redirect_to(login_path, :notice => 'User was successfully activated.')
    else
      not_authenticated
    end
  end
end
