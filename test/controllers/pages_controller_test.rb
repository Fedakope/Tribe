require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get statistiques" do
    get pages_statistiques_url
    assert_response :success
  end

end
