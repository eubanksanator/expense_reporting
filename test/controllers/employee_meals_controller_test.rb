require 'test_helper'

class EmployeeMealsControllerTest < ActionController::TestCase
  setup do
    @employee_meal = employee_meals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_meals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_meal" do
    assert_difference('EmployeeMeal.count') do
      post :create, employee_meal: { breakfast: @employee_meal.breakfast, dinner: @employee_meal.dinner, lunch: @employee_meal.lunch, occurence: @employee_meal.occurence }
    end

    assert_redirected_to employee_meal_path(assigns(:employee_meal))
  end

  test "should show employee_meal" do
    get :show, id: @employee_meal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_meal
    assert_response :success
  end

  test "should update employee_meal" do
    patch :update, id: @employee_meal, employee_meal: { breakfast: @employee_meal.breakfast, dinner: @employee_meal.dinner, lunch: @employee_meal.lunch, occurence: @employee_meal.occurence }
    assert_redirected_to employee_meal_path(assigns(:employee_meal))
  end

  test "should destroy employee_meal" do
    assert_difference('EmployeeMeal.count', -1) do
      delete :destroy, id: @employee_meal
    end

    assert_redirected_to employee_meals_path
  end
end
