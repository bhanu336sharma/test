class TeachersController < ApplicationController
	def new
		@teacher = Teacher.new
	end
	def create
		@teacher= Teacher.create(teacher_params)
    	redirect_to "/"
	end
	def index
		@teacher = Teacher.all

	end
	def show
	  	@teacher = Teacher.find(params[:id])
	    respond_to do |format|
	      format.html
	      format.js
	    end
	end
	def edit
		@teacher = Teacher.find(params[:id])
	end

  	def update
		@teacher = Teacher.find(params[:id])
		@teacher.update_attributes(teacher_params)
	    redirect_to "/"
	end

	def destroy
		@teacher = Teacher.find(params[:id])
		@teacher.destroy
		redirect_to "/"
	end
	
	private
	def teacher_params
		params.require(:teacher).permit(:name, :phone_no, :address, :subject, :password, :image, address_attributes: [:name, :phone_no, :address, :password])
	end
end
