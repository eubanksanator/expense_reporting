require 'test_helper'

class CabFareAndTollsControllerTest < ActionController::TestCase
  setup do
    @cab_fare_and_toll = cab_fare_and_tolls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cab_fare_and_tolls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cab_fare_and_toll" do
    assert_difference('CabFareAndToll.count') do
      post :create, cab_fare_and_toll: { cost: @cab_fare_and_toll.cost, description: @cab_fare_and_toll.description, occurence: @cab_fare_and_toll.occurence }
    end

    assert_redirected_to cab_fare_and_toll_path(assigns(:cab_fare_and_toll))
  end

  test "should show cab_fare_and_toll" do
    get :show, id: @cab_fare_and_toll
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cab_fare_and_toll
    assert_response :success
  end

  test "should update cab_fare_and_toll" do
    patch :update, id: @cab_fare_and_toll, cab_fare_and_toll: { cost: @cab_fare_and_toll.cost, description: @cab_fare_and_toll.description, occurence: @cab_fare_and_toll.occurence }
    assert_redirected_to cab_fare_and_toll_path(assigns(:cab_fare_and_toll))
  end

  test "should destroy cab_fare_and_toll" do
    assert_difference('CabFareAndToll.count', -1) do
      delete :destroy, id: @cab_fare_and_toll
    end

    assert_redirected_to cab_fare_and_tolls_path
  end
end
