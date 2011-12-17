class Admin::UsersController < ApplicationController
  respond_to :js

  def new
  end

  def list
    @users = User.all
  end

  def activate
  end

  def show
    @user = User.find(params[:id])
  end

end
