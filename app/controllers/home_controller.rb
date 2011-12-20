class HomeController < ApplicationController
  skip_before_filter :require_login

  def index
    #if logged_in?
      #redirect_to :root # редирект в кабинет
    #else
      @user = User.new
      @greeting = Greeting.find(rand(Greeting.count)+1).text
    #end
  end

end
