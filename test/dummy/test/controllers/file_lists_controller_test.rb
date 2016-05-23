require 'test_helper'

class FileListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get file_lists_index_url
    assert_response :success
  end

end
