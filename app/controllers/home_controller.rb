class HomeController < ApplicationController
  skip_before_filter :require_login

  def index
    if logged_in?
      redirect_to :root
    else
      @user = User.new
      @greeting = Greetings.find(rand(Greetings.count)+1).text
    end
  end

  def activate
    if @user = User.load_from_activation_token(params[:id])
      @user.activate!
      redirect_to(login_path, :notice => 'User was successfully activated.')
    else
      not_authenticated
    end
  end

end
