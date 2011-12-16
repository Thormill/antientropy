class AdminController < ApplicationController
  before_filter :authenticate

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "odmin" && password == "trololo"
    end
  end

  def index
    @quests = Quest.all
    render :index do |page|
      page.replace_html 'quest_holder', :template => 'admin/quests/index'
    end
  end

end
