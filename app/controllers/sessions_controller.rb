class SessionsController < ApplicationController
  before_filter :require_login, :only => [:destroy]

  def create
    login(params[:email], params[:password], params[:remember])
    
    respond_to do |format|
      format.js
    end
  end

  def destroy
    logout
    redirect_to(:root)
  end
end
