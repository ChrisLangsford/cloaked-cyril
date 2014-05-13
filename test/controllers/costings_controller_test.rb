require 'test_helper'

class CostingsControllerTest < ActionController::TestCase
  setup do
    @costing = costings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:costings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create costing" do
    assert_difference('Costing.count') do
      post :create, costing: { acc_cost: @costing.acc_cost, cost_date: @costing.cost_date, cost_status: @costing.cost_status, fabric_cost: @costing.fabric_cost, garment_id: @costing.garment_id, labour_cost: @costing.labour_cost, misc_cost: @costing.misc_cost }
    end

    assert_redirected_to costing_path(assigns(:costing))
  end

  test "should show costing" do
    get :show, id: @costing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @costing
    assert_response :success
  end

  test "should update costing" do
    patch :update, id: @costing, costing: { acc_cost: @costing.acc_cost, cost_date: @costing.cost_date, cost_status: @costing.cost_status, fabric_cost: @costing.fabric_cost, garment_id: @costing.garment_id, labour_cost: @costing.labour_cost, misc_cost: @costing.misc_cost }
    assert_redirected_to costing_path(assigns(:costing))
  end

  test "should destroy costing" do
    assert_difference('Costing.count', -1) do
      delete :destroy, id: @costing
    end

    assert_redirected_to costings_path
  end
end
