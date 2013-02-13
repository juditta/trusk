require 'test_helper'

class SpreePrototypesControllerTest < ActionController::TestCase
  setup do
    @spree_prototype = spree_prototypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spree_prototypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spree_prototype" do
    assert_difference('SpreePrototype.count') do
      post :create, spree_prototype: { name: @spree_prototype.name }
    end

    assert_redirected_to spree_prototype_path(assigns(:spree_prototype))
  end

  test "should show spree_prototype" do
    get :show, id: @spree_prototype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spree_prototype
    assert_response :success
  end

  test "should update spree_prototype" do
    put :update, id: @spree_prototype, spree_prototype: { name: @spree_prototype.name }
    assert_redirected_to spree_prototype_path(assigns(:spree_prototype))
  end

  test "should destroy spree_prototype" do
    assert_difference('SpreePrototype.count', -1) do
      delete :destroy, id: @spree_prototype
    end

    assert_redirected_to spree_prototypes_path
  end
end
