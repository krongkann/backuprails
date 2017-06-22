require 'test_helper'

class YayadbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yayadb = yayadbs(:one)
  end

  test "should get index" do
    get yayadbs_url
    assert_response :success
  end

  test "should get new" do
    get new_yayadb_url
    assert_response :success
  end

  test "should create yayadb" do
    assert_difference('Yayadb.count') do
      post yayadbs_url, params: { yayadb: {  } }
    end

    assert_redirected_to yayadb_url(Yayadb.last)
  end

  test "should show yayadb" do
    get yayadb_url(@yayadb)
    assert_response :success
  end

  test "should get edit" do
    get edit_yayadb_url(@yayadb)
    assert_response :success
  end

  test "should update yayadb" do
    patch yayadb_url(@yayadb), params: { yayadb: {  } }
    assert_redirected_to yayadb_url(@yayadb)
  end

  test "should destroy yayadb" do
    assert_difference('Yayadb.count', -1) do
      delete yayadb_url(@yayadb)
    end

    assert_redirected_to yayadbs_url
  end
end
