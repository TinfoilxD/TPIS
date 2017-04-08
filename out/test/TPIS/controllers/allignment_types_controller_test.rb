require 'test_helper'

class AllignmentTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @allignment_type = allignment_types(:one)
  end

  test "should get index" do
    get allignment_types_url
    assert_response :success
  end

  test "should get new" do
    get new_allignment_type_url
    assert_response :success
  end

  test "should create allignment_type" do
    assert_difference('AllignmentType.count') do
      post allignment_types_url, params: { allignment_type: { abbrev: @allignment_type.abbrev, allignment_type: @allignment_type.allignment_type } }
    end

    assert_redirected_to allignment_type_url(AllignmentType.last)
  end

  test "should show allignment_type" do
    get allignment_type_url(@allignment_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_allignment_type_url(@allignment_type)
    assert_response :success
  end

  test "should update allignment_type" do
    patch allignment_type_url(@allignment_type), params: { allignment_type: { abbrev: @allignment_type.abbrev, allignment_type: @allignment_type.allignment_type } }
    assert_redirected_to allignment_type_url(@allignment_type)
  end

  test "should destroy allignment_type" do
    assert_difference('AllignmentType.count', -1) do
      delete allignment_type_url(@allignment_type)
    end

    assert_redirected_to allignment_types_url
  end
end
