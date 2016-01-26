class DashboardController < ApplicationController
  def index
    @courses = Course.limit(5).order(created_at: :desc).decorate
    @classrooms = Classroom.limit(5).order(created_at: :desc).decorate
    @students = Student.limit(10).order(created_at: :desc).decorate

    @courses_count = Course.count()
    @classrooms_count = Classroom.count()
    @student_count = Student.count()

  end
end
