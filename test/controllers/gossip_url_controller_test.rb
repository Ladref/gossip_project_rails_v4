require 'test_helper'

class GossipUrlControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get gossip_url_page_url
    assert_response :success
  end

end
