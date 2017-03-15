require 'test_helper'

class CourseTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_type = course_types(:one)
  end

  test "should get index" do
    get course_types_url
    assert_response :success
  end

  test "should get new" do
    get new_course_type_url
    assert_response :success
  end

  test "should create course_type" do
    assert_difference('CourseType.count') do
      post course_types_url, params: { course_type: { course_type: @course_type.course_type } }
    end

    assert_redirected_to course_type_url(CourseType.last)
  end

  test "should show course_type" do
    get course_type_url(@course_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_type_url(@course_type)
    assert_response :success
  end

  test "should update course_type" do
    patch course_type_url(@course_type), params: { course_type: { course_type: @course_type.course_type } }
    assert_redirected_to course_type_url(@course_type)
  end

  test "should destroy course_type" do
    assert_difference('CourseType.count', -1) do
      delete course_type_url(@course_type)
    end

    assert_redirected_to course_types_url
  end
end
