require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get courses_url
    assert_response :success
  end

  test "should get new" do
    get new_course_url
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post courses_url, params: { course: { country: @course.country, course_address: @course.course_address, course_city: @course.course_city, course_start_date: @course.course_start_date, course_type_id: @course.course_type_id, course_zipcode: @course.course_zipcode, state: @course.state } }
    end

    assert_redirected_to course_url(Course.last)
  end

  test "should show course" do
    get course_url(@course)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_url(@course)
    assert_response :success
  end

  test "should update course" do
    patch course_url(@course), params: { course: { country: @course.country, course_address: @course.course_address, course_city: @course.course_city, course_start_date: @course.course_start_date, course_type_id: @course.course_type_id, course_zipcode: @course.course_zipcode, state: @course.state } }
    assert_redirected_to course_url(@course)
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end
end
