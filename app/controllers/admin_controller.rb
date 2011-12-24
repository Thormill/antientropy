class AdminController < ApplicationController
  respond_to :js, :html
  before_filter :authenticate

  def index
  end
  
  def quests
    respond_with(@quests = Quest.all)
  end
  
  def users
    respond_with(@users = User.all)
  end

protected
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "odmin" && password == "trololo"
    end
  end

end
