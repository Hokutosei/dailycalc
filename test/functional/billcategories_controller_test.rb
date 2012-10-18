require 'test_helper'

class BillcategoriesControllerTest < ActionController::TestCase
  setup do
    @billcategory = billcategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:billcategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create billcategory" do
    assert_difference('Billcategory.count') do
      post :create, billcategory: { title: @billcategory.title }
    end

    assert_redirected_to billcategory_path(assigns(:billcategory))
  end

  test "should show billcategory" do
    get :show, id: @billcategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @billcategory
    assert_response :success
  end

  test "should update billcategory" do
    put :update, id: @billcategory, billcategory: { title: @billcategory.title }
    assert_redirected_to billcategory_path(assigns(:billcategory))
  end

  test "should destroy billcategory" do
    assert_difference('Billcategory.count', -1) do
      delete :destroy, id: @billcategory
    end

    assert_redirected_to billcategories_path
  end
end
