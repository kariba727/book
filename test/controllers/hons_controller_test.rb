require 'test_helper'

class HonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hon = hons(:one)
  end

  test "should get index" do
    get hons_url
    assert_response :success
  end

  test "should get new" do
    get new_hon_url
    assert_response :success
  end

  test "should create hon" do
    assert_difference('Hon.count') do
      post hons_url, params: { hon: { author: @hon.author, title: @hon.title } }
    end

    assert_redirected_to hon_url(Hon.last)
  end

  test "should show hon" do
    get hon_url(@hon)
    assert_response :success
  end

  test "should get edit" do
    get edit_hon_url(@hon)
    assert_response :success
  end

  test "should update hon" do
    patch hon_url(@hon), params: { hon: { author: @hon.author, title: @hon.title } }
    assert_redirected_to hon_url(@hon)
  end

  test "should destroy hon" do
    assert_difference('Hon.count', -1) do
      delete hon_url(@hon)
    end

    assert_redirected_to hons_url
  end
end
