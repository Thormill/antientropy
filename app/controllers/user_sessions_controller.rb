class UserSessionsController < ApplicationController
  skip_before_filter :require_login, :except => [:destroy]

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password], params[:remember])
      redirect_back_or_to(:users, :notice => 'Login successfull.')
    else
      flash.now[:alert] = "Login failed."; render :action => "new"
    end
  end

  def destroy
    logout
    redirect_to(:login, :notice => 'Logged out!')
  end
end
