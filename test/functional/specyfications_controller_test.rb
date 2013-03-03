require 'test_helper'

class SpecyficationsControllerTest < ActionController::TestCase
  setup do
    @specyfication = specyfications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specyfications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create specyfication" do
    assert_difference('Specyfication.count') do
      post :create, specyfication: { product_id: @specyfication.product_id, quantity: @specyfication.quantity, specific_id: @specyfication.specific_id, type_specific_id: @specyfication.type_specific_id }
    end

    assert_redirected_to specyfication_path(assigns(:specyfication))
  end

  test "should show specyfication" do
    get :show, id: @specyfication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @specyfication
    assert_response :success
  end

  test "should update specyfication" do
    put :update, id: @specyfication, specyfication: { product_id: @specyfication.product_id, quantity: @specyfication.quantity, specific_id: @specyfication.specific_id, type_specific_id: @specyfication.type_specific_id }
    assert_redirected_to specyfication_path(assigns(:specyfication))
  end

  test "should destroy specyfication" do
    assert_difference('Specyfication.count', -1) do
      delete :destroy, id: @specyfication
    end

    assert_redirected_to specyfications_path
  end
end
