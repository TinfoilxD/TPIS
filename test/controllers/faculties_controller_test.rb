require 'test_helper'

class FacultiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faculty = faculties(:one)
  end

  test "should get index" do
    get faculties_url
    assert_response :success
  end

  test "should get new" do
    get new_faculty_url
    assert_response :success
  end

  test "should create faculty" do
    assert_difference('Faculty.count') do
      post faculties_url, params: { faculty: { country: @faculty.country, email,: @faculty.email,, faculty_type: @faculty.faculty_type, first_name,: @faculty.first_name,, last_name,: @faculty.last_name,, office_address,: @faculty.office_address,, phone,: @faculty.phone,, state,: @faculty.state,, zip_code,: @faculty.zip_code, } }
    end

    assert_redirected_to faculty_url(Faculty.last)
  end

  test "should show faculty" do
    get faculty_url(@faculty)
    assert_response :success
  end

  test "should get edit" do
    get edit_faculty_url(@faculty)
    assert_response :success
  end

  test "should update faculty" do
    patch faculty_url(@faculty), params: { faculty: { country: @faculty.country, email,: @faculty.email,, faculty_type: @faculty.faculty_type, first_name,: @faculty.first_name,, last_name,: @faculty.last_name,, office_address,: @faculty.office_address,, phone,: @faculty.phone,, state,: @faculty.state,, zip_code,: @faculty.zip_code, } }
    assert_redirected_to faculty_url(@faculty)
  end

  test "should destroy faculty" do
    assert_difference('Faculty.count', -1) do
      delete faculty_url(@faculty)
    end

    assert_redirected_to faculties_url
  end
end
