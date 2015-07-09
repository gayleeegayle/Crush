class SchedulesController < ApplicationController

	def index
		@schedules = Schedule.all
		render "schedules/index"
	end

	def show
		@schedule = Schedule.find(params[:id])
		render "schedules/show"
	end

	def new
		@schedule = Schedule.new
		render "schedules/new"
	end

	def create
		@schedule = Schedule.new(schedule_params)
		if @schedule.save
			redirect_to schedules_path
			#Don't need a show page for schedule
		else
			render "schedules/new"
		end
	end

	def edit
		@schedule = Schedule.find(params[:id])
		render "schedules/edit"
	end

	def update
		@schedule = Schedule.find(params[:id])
		if @schedule.update(schedule_params)
			redirect_to schedules_path
			#Don't need a show page for schedule
		else
			render "schedules/edit"
		end
	end

	def destroy
		@schedule = Schedule.find(params[:id])
		@schedule.destroy!
		redirect_to schedules_path
	end

	def schedule_params
		params.require(:schedule).permit!
	end

end
