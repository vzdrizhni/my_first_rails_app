require 'test_helper'

class TesticalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testical = testicals(:one)
  end

  test "should get index" do
    get testicals_url
    assert_response :success
  end

  test "should get new" do
    get new_testical_url
    assert_response :success
  end

  test "should create testical" do
    assert_difference('Testical.count') do
      post testicals_url, params: { testical: { make: @testical.make, model: @testical.model, year: @testical.year } }
    end

    assert_redirected_to testical_url(Testical.last)
  end

  test "should show testical" do
    get testical_url(@testical)
    assert_response :success
  end

  test "should get edit" do
    get edit_testical_url(@testical)
    assert_response :success
  end

  test "should update testical" do
    patch testical_url(@testical), params: { testical: { make: @testical.make, model: @testical.model, year: @testical.year } }
    assert_redirected_to testical_url(@testical)
  end

  test "should destroy testical" do
    assert_difference('Testical.count', -1) do
      delete testical_url(@testical)
    end

    assert_redirected_to testicals_url
  end
end
