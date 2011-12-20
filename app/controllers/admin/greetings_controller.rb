class Admin::GreetingsController < ApplicationController
  respond_to :js

  def index
    @greetings = Greeting.all
  end

  def new
    @greeting = Greeting.new
  end

  def create
    @greeting = Greeting.new(params[:greeting])
    if(@greeting.save)
            redirect_to admin_greetings_path
    else
            redirect_to new_admin_greeting_path(@greeting)
    end
  end

  def edit
    @greeting = Greeting.find(params[:id])
  end

  def update
    @greeting = Greeting.find(params[:id])
    if @greeting.update_attributes(params[:greeting])
      redirect_to admin_greetings_path
    else
      render :action => "edit"
    end
  end

  def delete
    @greeting = Greeting.find(params[:id])
    @greeting.destroy
    redirect_to admin_greetings_url
  end

end
