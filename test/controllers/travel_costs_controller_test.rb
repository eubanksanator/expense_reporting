require 'test_helper'

class TravelCostsControllerTest < ActionController::TestCase
  setup do
    @travel_cost = travel_costs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travel_costs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create travel_cost" do
    assert_difference('TravelCost.count') do
      post :create, travel_cost: { cost: @travel_cost.cost, description: @travel_cost.description, occurence: @travel_cost.occurence }
    end

    assert_redirected_to travel_cost_path(assigns(:travel_cost))
  end

  test "should show travel_cost" do
    get :show, id: @travel_cost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @travel_cost
    assert_response :success
  end

  test "should update travel_cost" do
    patch :update, id: @travel_cost, travel_cost: { cost: @travel_cost.cost, description: @travel_cost.description, occurence: @travel_cost.occurence }
    assert_redirected_to travel_cost_path(assigns(:travel_cost))
  end

  test "should destroy travel_cost" do
    assert_difference('TravelCost.count', -1) do
      delete :destroy, id: @travel_cost
    end

    assert_redirected_to travel_costs_path
  end
end
