class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from ActiveRecord::RecordNotFound do |exception|
    render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
  end

end
