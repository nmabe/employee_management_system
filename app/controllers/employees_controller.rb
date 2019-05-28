class EmployeesController < ApplicationController

  def index
    @employees = Employee.paginate(page: params[:page])
  end

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

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      flash[:success] = "Employee Details Updated Successful"
      redirect_to @employee
    else
      render 'edit'
    end
  end

  def destroy
    Employee.find(params[:id]).destroy
    flash[:success] = "Employee Deleted"
    redirect_to employees_url 
  end

  private

    def employee_params
      params.require(:employee).permit(:name, :email, :dob, :address, 
        :gender, :job_id)
    end
end
