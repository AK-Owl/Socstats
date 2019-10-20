require 'test_helper'

class LivedataControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get livedata_index_url
    assert_response :success
  end

end
