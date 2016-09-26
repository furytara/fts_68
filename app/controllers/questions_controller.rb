class QuestionsController < ApplicationController
  load_and_authorize_resource
  def index
    @questions = Question.updated_desc.page(params[:page])
      .per Settings.question_per_page
  end

  def new
  end

  def edit
  end

end
