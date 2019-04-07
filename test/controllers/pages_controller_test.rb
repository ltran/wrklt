require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get todo" do
    get pages_todo_url
    assert_response :success
  end

end
