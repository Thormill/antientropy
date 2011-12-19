class Admin::UsersController < ApplicationController
  respond_to :js

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if(@user.save)
            redirect_to admin_users_path
    else
            redirect_to new_admin_user_path(@user)
    end
  end

  def index
    @users = User.all
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
