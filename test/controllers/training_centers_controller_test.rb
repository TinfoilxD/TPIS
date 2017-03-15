require 'test_helper'

class TrainingCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @training_center = training_centers(:one)
  end

  test "should get index" do
    get training_centers_url
    assert_response :success
  end

  test "should get new" do
    get new_training_center_url
    assert_response :success
  end

  test "should create training_center" do
    assert_difference('TrainingCenter.count') do
      post training_centers_url, params: { training_center: { email: @training_center.email, phone: @training_center.phone, primary_contact: @training_center.primary_contact, training_center_name: @training_center.training_center_name } }
    end

    assert_redirected_to training_center_url(TrainingCenter.last)
  end

  test "should show training_center" do
    get training_center_url(@training_center)
    assert_response :success
  end

  test "should get edit" do
    get edit_training_center_url(@training_center)
    assert_response :success
  end

  test "should update training_center" do
    patch training_center_url(@training_center), params: { training_center: { email: @training_center.email, phone: @training_center.phone, primary_contact: @training_center.primary_contact, training_center_name: @training_center.training_center_name } }
    assert_redirected_to training_center_url(@training_center)
  end

  test "should destroy training_center" do
    assert_difference('TrainingCenter.count', -1) do
      delete training_center_url(@training_center)
    end

    assert_redirected_to training_centers_url
  end
end
