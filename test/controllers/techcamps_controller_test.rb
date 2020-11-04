require 'test_helper'

class TechcampsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get techcamps_top_url
    assert_response :success
  end

end
