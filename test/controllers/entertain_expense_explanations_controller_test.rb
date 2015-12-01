require 'test_helper'

class EntertainExpenseExplanationsControllerTest < ActionController::TestCase
  setup do
    @entertain_expense_explanation = entertain_expense_explanations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entertain_expense_explanations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entertain_expense_explanation" do
    assert_difference('EntertainExpenseExplanation.count') do
      post :create, entertain_expense_explanation: { amount: @entertain_expense_explanation.amount, business_purpose: @entertain_expense_explanation.business_purpose, location: @entertain_expense_explanation.location, occurence: @entertain_expense_explanation.occurence, person_entertained: @entertain_expense_explanation.person_entertained }
    end

    assert_redirected_to entertain_expense_explanation_path(assigns(:entertain_expense_explanation))
  end

  test "should show entertain_expense_explanation" do
    get :show, id: @entertain_expense_explanation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entertain_expense_explanation
    assert_response :success
  end

  test "should update entertain_expense_explanation" do
    patch :update, id: @entertain_expense_explanation, entertain_expense_explanation: { amount: @entertain_expense_explanation.amount, business_purpose: @entertain_expense_explanation.business_purpose, location: @entertain_expense_explanation.location, occurence: @entertain_expense_explanation.occurence, person_entertained: @entertain_expense_explanation.person_entertained }
    assert_redirected_to entertain_expense_explanation_path(assigns(:entertain_expense_explanation))
  end

  test "should destroy entertain_expense_explanation" do
    assert_difference('EntertainExpenseExplanation.count', -1) do
      delete :destroy, id: @entertain_expense_explanation
    end

    assert_redirected_to entertain_expense_explanations_path
  end
end
