class ApplicationHelperTest < ActionView::TestCase
    test "full title helper" do
        assert_equal full_title("Home"), "Home | Employee Management System"
        assert_equal full_title("About"), "About | Employee Management System"
        assert_equal full_title("Contact"), "Contact | Employee Management System"
        assert_equal full_title("Help"), "Help | Employee Management System"
    end
end