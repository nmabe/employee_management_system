class EmployeesController < ApplicationController

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end
  
  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      flash[:success] = "Employee Successfully Added"
      redirect_to @employee
    else
      render 'new'
    end
  end

  private

    def employee_params
      params.require(:employee).permit(:name, :email, :dob, :address, 
        :gender, :job_id)
    end
end
