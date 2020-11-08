require 'test_helper'

class CustomercategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customercategory = customercategories(:one)
  end

  test "should get index" do
    get customercategories_url
    assert_response :success
  end

  test "should get new" do
    get new_customercategory_url
    assert_response :success
  end

  test "should create customercategory" do
    assert_difference('Customercategory.count') do
      post customercategories_url, params: { customercategory: { type: @customercategory.type } }
    end

    assert_redirected_to customercategory_url(Customercategory.last)
  end

  test "should show customercategory" do
    get customercategory_url(@customercategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_customercategory_url(@customercategory)
    assert_response :success
  end

  test "should update customercategory" do
    patch customercategory_url(@customercategory), params: { customercategory: { type: @customercategory.type } }
    assert_redirected_to customercategory_url(@customercategory)
  end

  test "should destroy customercategory" do
    assert_difference('Customercategory.count', -1) do
      delete customercategory_url(@customercategory)
    end

    assert_redirected_to customercategories_url
  end
end
