require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Employee Management System"
  end

  test "should get new" do
    get create_path
    assert_response :success
    assert_select "title", "Create | #{@base_title}"
  end

end
