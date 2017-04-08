require 'test_helper'

class ApplicationFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @application_form = application_forms(:one)
  end

  test "should get index" do
    get application_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_application_form_url
    assert_response :success
  end

  test "should create application_form" do
    assert_difference('ApplicationForm.count') do
      post application_forms_url, params: { application_form: { aha_form_agreement: @application_form.aha_form_agreement, aha_instructor_motivation: @application_form.aha_instructor_motivation, boolean: @application_form.boolean, candidate_id: @application_form.candidate_id, class_availability: @application_form.class_availability, course_id: @application_form.course_id, date_agreed: @application_form.date_agreed, marketing_origin: @application_form.marketing_origin, owned_equipment: @application_form.owned_equipment, screening_form_agreement: @application_form.screening_form_agreement, teaching_frequency: @application_form.teaching_frequency, teaching_location: @application_form.teaching_location, training_center_id: @application_form.training_center_id } }
    end

    assert_redirected_to application_form_url(ApplicationForm.last)
  end

  test "should show application_form" do
    get application_form_url(@application_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_application_form_url(@application_form)
    assert_response :success
  end

  test "should update application_form" do
    patch application_form_url(@application_form), params: { application_form: { aha_form_agreement: @application_form.aha_form_agreement, aha_instructor_motivation: @application_form.aha_instructor_motivation, boolean: @application_form.boolean, candidate_id: @application_form.candidate_id, class_availability: @application_form.class_availability, course_id: @application_form.course_id, date_agreed: @application_form.date_agreed, marketing_origin: @application_form.marketing_origin, owned_equipment: @application_form.owned_equipment, screening_form_agreement: @application_form.screening_form_agreement, teaching_frequency: @application_form.teaching_frequency, teaching_location: @application_form.teaching_location, training_center_id: @application_form.training_center_id } }
    assert_redirected_to application_form_url(@application_form)
  end

  test "should destroy application_form" do
    assert_difference('ApplicationForm.count', -1) do
      delete application_form_url(@application_form)
    end

    assert_redirected_to application_forms_url
  end
end
