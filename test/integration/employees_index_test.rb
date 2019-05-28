require 'test_helper'

class EmployeesIndexTest < ActionDispatch::IntegrationTest

  def setup
    @employee = employees(:kelly)
  end
  
  test "index including pagination" do
    get employees_path
    assert_template 'employees/index'
    assert_select 'div.pagination'
    Employee.paginate(page: 1).each do |employee|
      assert_select 'a[href=?]', employee_path(employee), text: employee.name
      assert_select 'a[href=?]', employee_path(employee), text: "Delete"
    end
    assert_difference 'Employee.count', -1 do
      delete employee_path(@employee)
    end
  end
end
