require 'test_helper'

class GarmentsControllerTest < ActionController::TestCase
  setup do
    @garment = garments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:garments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create garment" do
    assert_difference('Garment.count') do
      post :create, garment: { across_back: @garment.across_back, back_length: @garment.back_length, bust: @garment.bust, bust_point: @garment.bust_point, front_length: @garment.front_length, garment_description: @garment.garment_description, garment_type: @garment.garment_type, hip_lower: @garment.hip_lower, hip_upper: @garment.hip_upper, jacket_length: @garment.jacket_length, order_id: @garment.order_id, pants_length: @garment.pants_length, shoulder_to_under_bust: @garment.shoulder_to_under_bust, shoulderlength: @garment.shoulderlength, skirt_length: @garment.skirt_length, sleeve_length: @garment.sleeve_length, sleeve_width_elbow: @garment.sleeve_width_elbow, sleeve_width_upper: @garment.sleeve_width_upper, sleeve_width_wrist: @garment.sleeve_width_wrist, under_bust: @garment.under_bust, waist: @garment.waist }
    end

    assert_redirected_to garment_path(assigns(:garment))
  end

  test "should show garment" do
    get :show, id: @garment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @garment
    assert_response :success
  end

  test "should update garment" do
    patch :update, id: @garment, garment: { across_back: @garment.across_back, back_length: @garment.back_length, bust: @garment.bust, bust_point: @garment.bust_point, front_length: @garment.front_length, garment_description: @garment.garment_description, garment_type: @garment.garment_type, hip_lower: @garment.hip_lower, hip_upper: @garment.hip_upper, jacket_length: @garment.jacket_length, order_id: @garment.order_id, pants_length: @garment.pants_length, shoulder_to_under_bust: @garment.shoulder_to_under_bust, shoulderlength: @garment.shoulderlength, skirt_length: @garment.skirt_length, sleeve_length: @garment.sleeve_length, sleeve_width_elbow: @garment.sleeve_width_elbow, sleeve_width_upper: @garment.sleeve_width_upper, sleeve_width_wrist: @garment.sleeve_width_wrist, under_bust: @garment.under_bust, waist: @garment.waist }
    assert_redirected_to garment_path(assigns(:garment))
  end

  test "should destroy garment" do
    assert_difference('Garment.count', -1) do
      delete :destroy, id: @garment
    end

    assert_redirected_to garments_path
  end
end
