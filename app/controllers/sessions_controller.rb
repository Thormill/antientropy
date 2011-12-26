class SessionsController < ApplicationController
  before_filter :require_login, only: :destroy
  respond_to :js, only: :create

  def create
    login(params[:email], params[:password], params[:remember])
  end

  def destroy
    logout
    redirect_to(:root)
  end
end
