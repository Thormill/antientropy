class SessionsController < ApplicationController
  before_filter :require_login, :only => [:destroy]

  def create
    login(params[:email], params[:password], params[:remember])
    if logged_in?
      redirect_to :root
    else
      redirect_to :root
    end
  end

  def destroy
    logout
    redirect_to(:root)
  end
end
