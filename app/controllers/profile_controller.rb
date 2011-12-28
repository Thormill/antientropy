class ProfileController < ApplicationController
  before_filter :require_login
  skip_before_filter :require_login, only: :show
  respond_to :js, only: :new_message
  
  def index
    render "index"
  end

  def show
    raise ActiveRecord::RecordNotFound if (@user = User.find_by_name(params[:name])).nil?
    render @user == current_user ? "index" : "neighbor"
  end

  def new_message
    @message = params[:message]
  end

end
