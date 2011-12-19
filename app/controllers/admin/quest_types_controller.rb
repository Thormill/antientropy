class Admin::QuestTypesController < ApplicationController
  respond_to :js

  def index
    @qtypes = QuestTypes.all
  end

  def new
    @qtype = QuestTypes.new
  end

  def create
    @qtype = QuestTypes.new(params[:quest_type])
  end

  def edit
    @qtype = QuestTypes.find(params[:id])
  end

  def update
    @qtype = QuestTypes.find(params[:id])
  end

  def delete
  end

end
