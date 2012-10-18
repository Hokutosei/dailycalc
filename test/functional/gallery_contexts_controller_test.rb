require 'test_helper'

class GalleryContextsControllerTest < ActionController::TestCase
  setup do
    @gallery_context = gallery_contexts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gallery_contexts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gallery_context" do
    assert_difference('GalleryContext.count') do
      post :create, gallery_context: { body: @gallery_context.body, title: @gallery_context.title }
    end

    assert_redirected_to gallery_context_path(assigns(:gallery_context))
  end

  test "should show gallery_context" do
    get :show, id: @gallery_context
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gallery_context
    assert_response :success
  end

  test "should update gallery_context" do
    put :update, id: @gallery_context, gallery_context: { body: @gallery_context.body, title: @gallery_context.title }
    assert_redirected_to gallery_context_path(assigns(:gallery_context))
  end

  test "should destroy gallery_context" do
    assert_difference('GalleryContext.count', -1) do
      delete :destroy, id: @gallery_context
    end

    assert_redirected_to gallery_contexts_path
  end
end
