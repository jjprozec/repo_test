require 'test_helper'

class PenesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get penes_new_url
    assert_response :success
  end

end
