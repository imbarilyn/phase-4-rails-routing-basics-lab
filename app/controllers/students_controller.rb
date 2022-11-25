class StudentsController < ApplicationController
    def index 
        students = Student.all
        render json: students
    end

    def grade
        students = Student.all.order(grade: :desc)
        render json: students
    end

    def highest_grade 
        students = Student.all.order(grade: :desc).limit(1)
        render json: students
    end


end
