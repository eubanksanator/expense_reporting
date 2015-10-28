require 'test_helper'

class LocalCarRentalsControllerTest < ActionController::TestCase
  setup do
    @local_car_rental = local_car_rentals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:local_car_rentals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create local_car_rental" do
    assert_difference('LocalCarRental.count') do
      post :create, local_car_rental: { cost: @local_car_rental.cost, description: @local_car_rental.description, occurence: @local_car_rental.occurence }
    end

    assert_redirected_to local_car_rental_path(assigns(:local_car_rental))
  end

  test "should show local_car_rental" do
    get :show, id: @local_car_rental
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @local_car_rental
    assert_response :success
  end

  test "should update local_car_rental" do
    patch :update, id: @local_car_rental, local_car_rental: { cost: @local_car_rental.cost, description: @local_car_rental.description, occurence: @local_car_rental.occurence }
    assert_redirected_to local_car_rental_path(assigns(:local_car_rental))
  end

  test "should destroy local_car_rental" do
    assert_difference('LocalCarRental.count', -1) do
      delete :destroy, id: @local_car_rental
    end

    assert_redirected_to local_car_rentals_path
  end
end
