class ProfileController < ApplicationController
  before_filter :require_login

  def index
    @user = User.find_by_name(params[:name]) || nil
    unless @user == current_user
      render "alien"
    else
      render "index"
    end
  end

end
