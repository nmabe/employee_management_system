require 'test_helper'

class EmployeesEditTest < ActionDispatch::IntegrationTest
  
  def setup
    @employee = employees(:nkuli)
  end
  
  test "invalid edit" do
    get edit_employee_path(@employee)
    assert_template 'employees/edit'
    dob = 37.year.ago
    patch employee_path(@employee), params: { employee: {  name: "",
                                                dob: dob,
                                                email: "email.invalid",
                                                address: "",
                                                gender: "Female",
                                                job_id: 78
    }}
    assert_template 'employees/edit'
  end

  test "valid edit" do
    get edit_employee_path(@employee)
    assert_template 'employees/edit'
    dob = 37.year.ago
    name = "Nkululeko Macgesta"
    gender = "Male"
    patch employee_path(@employee), params: { employee: {  name: name,
                                                dob: dob,
                                                email: "valid@mail.com",
                                                address: "38732 burg avenue Denver 3834",
                                                gender: gender,
                                                job_id: 78
    }}
    assert_not flash.empty?
    assert_redirected_to @employee
    @employee.reload
    assert_equal = name, @employee.name
    assert_equal gender, @employee.gender
  end
end
