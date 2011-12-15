class AdminController < ApplicationController
  before_filter :authenticate

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "odmin" && password == "trololo"
    end
  end

  def index
    @quests = Quest.all
  end
end
