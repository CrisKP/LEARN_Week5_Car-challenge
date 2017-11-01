require 'test_helper'

class CarSimulatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get car_simulators_create_url
    assert_response :success
  end

end
