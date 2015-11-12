require 'test_helper'

class OtherExpensesControllerTest < ActionController::TestCase
  setup do
    @other_expense = other_expenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:other_expenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create other_expense" do
    assert_difference('OtherExpense.count') do
      post :create, other_expense: { description: @other_expense.description, occurence: @other_expense.occurence }
    end

    assert_redirected_to other_expense_path(assigns(:other_expense))
  end

  test "should show other_expense" do
    get :show, id: @other_expense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @other_expense
    assert_response :success
  end

  test "should update other_expense" do
    patch :update, id: @other_expense, other_expense: { description: @other_expense.description, occurence: @other_expense.occurence }
    assert_redirected_to other_expense_path(assigns(:other_expense))
  end

  test "should destroy other_expense" do
    assert_difference('OtherExpense.count', -1) do
      delete :destroy, id: @other_expense
    end

    assert_redirected_to other_expenses_path
  end
end
