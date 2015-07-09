class CoursesController < ApplicationController

	def index
		@courses = Course.all
		render "courses/index"
	end

	def show
		@course = Course.find(params[:id])
		render "courses/show"
	end

	def new
		@course = Course.new
		render "courses/new"
	end

	def create
		@course = Course.new(course_params)
		if @course.save
			redirect_to course_path(@course.id)
		else
			render "courses/new"
		end
	end

	def edit
		@course = Course.find(params[:id])
		render "courses/edit"
	end

	def update
		@course = Course.find(params[:id])
		if @course.update(course_params)
			redirect_to course_path(@course.id)
		else
			render "courses/edit"
		end
	end

	def destroy
		@course = Course.find(params[:id])
		@course.destroy!
		redirect_to courses_path
	end

	def course_params
		params.require(:course).permit!
	end

end
