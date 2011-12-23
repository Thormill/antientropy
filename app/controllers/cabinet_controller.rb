class CabinetController < ApplicationController
  def index
    @user = User.find_by_name(params[:name]) || nil
    if @user.nil?
      raise ActionController::RoutingError.new('Not Found')
    else
      unless @user == current_user
        redirect_to root_path
      else
        render "index"
      end
    end
  end

end
