class EmployeeDetailController < ApplicationController
	def index
		@employee = EmployeeDetail.all
		
	end
	def new
			end
	def edit
		@employee =EmployeeDetail.find_by_id(params[:id])
	end
	def update
		@employee =EmployeeDetail.find_by_id(params[:id])
		if @employee.update(employeedetail_params)
			flash[:notice]= 'updated'
			redirect_to employee_detail_index_path
		else
			flash[:notice] = 'not updated'
			render :edit
		end

	end
	private

	def employeedetail_params
		params.require(:employee).permit(:name,:address)
	end
	def delete
		ff
	end
end

