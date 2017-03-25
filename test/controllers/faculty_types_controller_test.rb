require 'test_helper'

class FacultyTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faculty_type = faculty_types(:one)
  end

  test "should get index" do
    get faculty_types_url
    assert_response :success
  end

  test "should get new" do
    get new_faculty_type_url
    assert_response :success
  end

  test "should create faculty_type" do
    assert_difference('FacultyType.count') do
      post faculty_types_url, params: { faculty_type: { job_title: @faculty_type.job_title } }
    end

    assert_redirected_to faculty_type_url(FacultyType.last)
  end

  test "should show faculty_type" do
    get faculty_type_url(@faculty_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_faculty_type_url(@faculty_type)
    assert_response :success
  end

  test "should update faculty_type" do
    patch faculty_type_url(@faculty_type), params: { faculty_type: { job_title: @faculty_type.job_title } }
    assert_redirected_to faculty_type_url(@faculty_type)
  end

  test "should destroy faculty_type" do
    assert_difference('FacultyType.count', -1) do
      delete faculty_type_url(@faculty_type)
    end

    assert_redirected_to faculty_types_url
  end
end
