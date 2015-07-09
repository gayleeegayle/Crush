class CrushesController < ApplicationController

	def index
		@crushes = Crush.all
		render "crushes/index"
	end

	def show
		@crush = Crush.find(params[:id])
		#@male_crushes = Crush.where(gender: "Male")
		#@female_crushes = Crush.where(gender: "Female")
		render "crushes/show"
	end

	def new
		@crush = Crush.new

		if params[:course_id].present?
			@crush.course = Course.find(params[:course_id])
		end
		render "crushes/new"
	end

	def create
		@crush = Crush.new(crush_params)
		if @crush.save
			redirect_to crush_path(@crush.id)
		else
			render "crushes/new"
		end
	end

	def edit
		@crush = Crush.find(params[:id])
		render "crushes/edit"
	end

	def update
		@crush = Crush.find(params[:id])
		if @crush.update(crush_params)
			redirect_to crush_path(@crush.id)
		else
			render "crushes/edit"
		end
	end

	def destroy
		@crush = Crush.find(params[:id])
		@crush.destroy!
		redirect_to crushes_path
	end

	def crush_params
		params.require(:crush).permit!
	end

end
