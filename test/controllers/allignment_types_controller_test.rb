require 'test_helper'

class AllignmentTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @allignment_type = allignment_types(:one)
  end

  test "should get index" do
    get alignmentTypes_url
    assert_response :success
  end

  test "should get new" do
    get new_alignmentType_url
    assert_response :success
  end

  test "should create allignment_type" do
    assert_difference('AllignmentType.count') do
      post alignmentTypes_url, params: {allignment_type: {abbrev: @allignment_type.abbrev, allignment_type: @allignment_type.allignment_type } }
    end

    assert_redirected_to alignmentType_url(AlignmentType.last)
  end

  test "should show allignment_type" do
    get alignmentType_url(@allignment_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_alignmentType_url(@allignment_type)
    assert_response :success
  end

  test "should update allignment_type" do
    patch alignmentType_url(@allignment_type), params: {allignment_type: {abbrev: @allignment_type.abbrev, allignment_type: @allignment_type.alignment_type } }
    assert_redirected_to alignmentType_url(@allignment_type)
  end

  test "should destroy allignment_type" do
    assert_difference('AllignmentType.count', -1) do
      delete alignmentType_url(@allignment_type)
    end

    assert_redirected_to alignmentTypes_url
  end
end
