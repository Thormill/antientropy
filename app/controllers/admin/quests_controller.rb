class Admin::QuestsController < ApplicationController
  respond_to :js

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
            redirect_to admin_quests_path, :notice => 'Yeah!'
    else
            redirect_to new_admin_quest_path(@quest), :notice => 'mistake'
    end
  end

  def edit
    @quest = Quest.find(params[:id])
  end

  def update
    @quest = Quest.find(params[:id])
    if @quest.update_attributes(params[:quest])
      redirect_to admin_quest_path(@quest), :notice => 'success'
    else
      render :action => "edit"
    end
  end

  def destroy
    @quest = Quest.find(params[:id])
    @quest.destroy
    redirect_to(admin_quests_url)
  end
end
