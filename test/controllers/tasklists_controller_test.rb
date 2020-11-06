require 'test_helper'

class TasklistsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get tasklists_top_url
    assert_response :success
  end

end
