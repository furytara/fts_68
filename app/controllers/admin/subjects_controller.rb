class Admin::SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def new
    @subject = Subject.new
  end
  def create
    @subject = Subject.new subject_params
    @subject.save
  end

  def edit
  end

  def update
  end

  private
  def subject_params
    params.require(:subject).permit :name, :description, :duration, :number_of_questions
  end
end
