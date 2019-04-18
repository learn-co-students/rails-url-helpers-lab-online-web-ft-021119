class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def update
    set_student
    @student.toggle(:active)
    @student.save
    redirect_to "/students/#{params[:id]}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
