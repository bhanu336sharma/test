class StudentsController < ApplicationController
	def new
		@student = Student.new
	end

	def create
    	@teacher = Teacher.find(params[:teacher_id])
    	@student = @teacher.students.create(student_params)
    	redirect_to "/"
    end

	def show
		@student = Student.find(params[:id])
	end
	def edit
		@teacher = Teacher.find(params[:teacher_id])
    	@student = @teacher.students.find(params[:id])		
	end

  	def update
	    @teacher = Teacher.find(params[:teacher_id])
    	@student = @teacher.students.find(params[:teacher_id])
		@student.update_attributes(student_params)
	    redirect_to "/show/params[:teacher_id]"
	end

	def destroy

		@teacher = Teacher.find(params[:teacher_id])
    	@student = @teacher.students.find(params[:id])
		@student.destroy
		@idd = params[:teacher_id]
		redirect_to "/"
	end

	private
	def student_params
		params.require(:student).permit(:name, :phone_no, :address,  :password, :image)
	end
end


