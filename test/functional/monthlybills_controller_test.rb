require 'test_helper'

class MonthlybillsControllerTest < ActionController::TestCase
  setup do
    @monthlybill = monthlybills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monthlybills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monthlybill" do
    assert_difference('Monthlybill.count') do
      post :create, monthlybill: { amount: @monthlybill.amount, category: @monthlybill.category, duedate: @monthlybill.duedate, location: @monthlybill.location, month_id: @monthlybill.month_id, payment: @monthlybill.payment, title: @monthlybill.title, user_id: @monthlybill.user_id, year_id: @monthlybill.year_id }
    end

    assert_redirected_to monthlybill_path(assigns(:monthlybill))
  end

  test "should show monthlybill" do
    get :show, id: @monthlybill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monthlybill
    assert_response :success
  end

  test "should update monthlybill" do
    put :update, id: @monthlybill, monthlybill: { amount: @monthlybill.amount, category: @monthlybill.category, duedate: @monthlybill.duedate, location: @monthlybill.location, month_id: @monthlybill.month_id, payment: @monthlybill.payment, title: @monthlybill.title, user_id: @monthlybill.user_id, year_id: @monthlybill.year_id }
    assert_redirected_to monthlybill_path(assigns(:monthlybill))
  end

  test "should destroy monthlybill" do
    assert_difference('Monthlybill.count', -1) do
      delete :destroy, id: @monthlybill
    end

    assert_redirected_to monthlybills_path
  end
end
