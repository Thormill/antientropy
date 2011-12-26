class ProfileController < ApplicationController
  before_filter :require_login
  skip_before_filter :require_login, only: :show
  
  def index
    render "index"
  end

  def show
    raise ActiveRecord::RecordNotFound if (@user = User.find_by_name(params[:name])).nil?
    render @user == current_user ? "index" : "neighbor"
  end

end
