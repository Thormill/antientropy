class Admin::UsersController < ApplicationController
  respond_to :js

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:quest])
    if(@user.save)
            redirect_to admin_users_path, :notice => 'Yeah!'
    else
            redirect_to new_admin_user_path(@user), :notice => 'mistake'
    end
  end

  def list
    @users = User.all
  end

  def activate
    @user = user.find(params[:id])
    @user.activate!
  end

  def show
    @user = User.find(params[:id])
  end

  def delete
    @user = User.find(params[:id])
    @user.destroy
    #redirect_to(admin_users_url)
  end

end
