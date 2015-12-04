require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  test "should get ganancias" do
    get :ganancias
    assert_response :success
  end

  test "should get registrados" do
    get :registrados
    assert_response :success
  end

end
