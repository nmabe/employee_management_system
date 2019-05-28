require 'test_helper'

class EmployeesAddTest < ActionDispatch::IntegrationTest

  test "invalid create information" do
    get new_path
    dob = 7.year.ago
    assert_no_difference 'Employee.count' do
      post employees_path, params: { employee: { name: "",
                                                dob: dob,
                                                email: "email.invalid",
                                                address: "",
                                                gender: "Female",
                                                job_id: 78
      }}
    end
    assert_template 'employees/new'
    assert_select 'div#error_explanation'
    assert_select 'div.alert'
  end

  test "valid create information" do
    get new_path
    dob = 25.year.ago
    assert_difference 'Employee.count', 1 do
      post employees_path, params: { employee: { name: "New Employee",
                                                 dob: dob,
                                                 email: "new@employee.org",
                                                 address: "123 Foo Street Bar 38732",
                                                gender: "Female",
                                                job_id: 34674 

      }}
    end
    follow_redirect!
    assert_template 'employees/show'
    assert_not flash.empty?
  end
end
