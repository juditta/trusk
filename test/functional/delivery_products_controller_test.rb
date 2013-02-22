require 'test_helper'

class DeliveryProductsControllerTest < ActionController::TestCase
  setup do
    @delivery_product = delivery_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:delivery_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create delivery_product" do
    assert_difference('DeliveryProduct.count') do
      post :create, delivery_product: { delivery_id: @delivery_product.delivery_id, price: @delivery_product.price, product_id: @delivery_product.product_id, quantity: @delivery_product.quantity, vat: @delivery_product.vat }
    end

    assert_redirected_to delivery_product_path(assigns(:delivery_product))
  end

  test "should show delivery_product" do
    get :show, id: @delivery_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @delivery_product
    assert_response :success
  end

  test "should update delivery_product" do
    put :update, id: @delivery_product, delivery_product: { delivery_id: @delivery_product.delivery_id, price: @delivery_product.price, product_id: @delivery_product.product_id, quantity: @delivery_product.quantity, vat: @delivery_product.vat }
    assert_redirected_to delivery_product_path(assigns(:delivery_product))
  end

  test "should destroy delivery_product" do
    assert_difference('DeliveryProduct.count', -1) do
      delete :destroy, id: @delivery_product
    end

    assert_redirected_to delivery_products_path
  end
end
