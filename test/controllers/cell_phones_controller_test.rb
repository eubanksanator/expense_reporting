require 'test_helper'

class CellPhonesControllerTest < ActionController::TestCase
  setup do
    @cell_phone = cell_phones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cell_phones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cell_phone" do
    assert_difference('CellPhone.count') do
      post :create, cell_phone: { cost: @cell_phone.cost, occurence: @cell_phone.occurence }
    end

    assert_redirected_to cell_phone_path(assigns(:cell_phone))
  end

  test "should show cell_phone" do
    get :show, id: @cell_phone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cell_phone
    assert_response :success
  end

  test "should update cell_phone" do
    patch :update, id: @cell_phone, cell_phone: { cost: @cell_phone.cost, occurence: @cell_phone.occurence }
    assert_redirected_to cell_phone_path(assigns(:cell_phone))
  end

  test "should destroy cell_phone" do
    assert_difference('CellPhone.count', -1) do
      delete :destroy, id: @cell_phone
    end

    assert_redirected_to cell_phones_path
  end
end
