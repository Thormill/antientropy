class Admin::QuestsController < ApplicationController
  #before_filter :authenticate

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "odmin" && password == "trololo"
    end
  end

  def index
    @quests = Quest.all
  end

  def show
    @quest = Quest.find(params[:id])
  end

  def new
    @quest = Quest.new
  end

  def create
    @quest = Quest.new(params[:quest])
    if(@quest.save)
            render :action => "new", :notice => "Yeah"
    else
            render :action => "new", :notice => "=("
    end
  end
  
  def edit
    @quest = Quest.find(params[:id])
  end

  def update
    @quest = Quest.find(params[:id])

    if @quest.update_attributes(params[:quest])
      redirect_to admin_quest_path(@quest), :notice => 'sdads'
    else
      render :action => "edit"
    end
  end

  # DELETE /users/1
  def destroy
    @quest = Quest.find(params[:id])
    @quest.destroy
    redirect_to(admin_quests_url)
  end
end
