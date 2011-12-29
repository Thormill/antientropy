class MessagesController < ApplicationController
  before_filter :require_login
  respond_to :js, only: :new
  
  def new
    @message = params[:message]
  end
  
end
