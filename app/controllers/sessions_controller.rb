class SessionsController < ApplicationController
  before_filter :require_login, :only => [:destroy]

  def create
    @notice = login(params[:email], params[:password], params[:remember]) ? I18n.t('user.login.done') : I18n.t('user.login.error')

    unless logged_in?
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
