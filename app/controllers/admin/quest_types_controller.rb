class Admin::QuestTypesController < ApplicationController
  respond_to :js

  def index
    @qtypes = QuestType.all
  end

  def new
    @qtype = QuestType.new
  end

  def create
    @qtype = QuestType.new(params[:quest_type])
    if(@qtype.save)
      redirect_to admin_quest_types_path
    else
      redirect_to new_admin_quest_type_path(@qtype)
    end
  end

  def edit
    @qtype = QuestType.find(params[:id])
  end

  def update
    @qtype = QuestType.find(params[:id])
    if @qtype.update_attributes(params[:quest_type])
      redirect_to admin_quest_types_path
    else
      
    end
  end

  def delete
    @qtype = QuestType.find(params[:id])
    @qtype.destroy
    redirect_to admin_quest_types_path
  end

end
