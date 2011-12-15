class SessionsController < ApplicationController
  skip_before_filter :require_login, :except => [:destroy]

  def create
    if user = login(params[:email], params[:password], params[:remember])
      redirect_back_or_to(:root)
    else
      redirect_back_or_to(:root)
    end
  end

  def destroy
    logout
    redirect_to(:login, :notice => 'Logged out!')
  end
end
