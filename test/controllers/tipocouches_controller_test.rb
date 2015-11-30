require 'test_helper'

class TipocouchesControllerTest < ActionController::TestCase
  test "should get altaTIPOcouch" do
    get :altaTIPOcouch
    assert_response :success
  end

  test "should get bajaTIPOcouch" do
    get :bajaTIPOcouch
    assert_response :success
  end

  test "should get modTIPOcouch" do
    get :modTIPOcouch
    assert_response :success
  end

  test "should get detTIPOcouch" do
    get :detTIPOcouch
    assert_response :success
  end

  test "should get listarTIPOcouch" do
    get :listarTIPOcouch
    assert_response :success
  end

end
