require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { barcode: @product.barcode, converter: @product.converter, expiration_date: @product.expiration_date, index: @product.index, measure: @product.measure, name: @product.name, price_a: @product.price_a, price_b: @product.price_b, quantity_price: @product.quantity_price, retial_price: @product.retial_price, spree_products_id: @product.spree_products_id, state: @product.state, state_max: @product.state_max, state_min: @product.state_min, type_product: @product.type_product, unit_basic: @product.unit_basic, unit_sale: @product.unit_sale, vat: @product.vat }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    put :update, id: @product, product: { barcode: @product.barcode, converter: @product.converter, expiration_date: @product.expiration_date, index: @product.index, measure: @product.measure, name: @product.name, price_a: @product.price_a, price_b: @product.price_b, quantity_price: @product.quantity_price, retial_price: @product.retial_price, spree_products_id: @product.spree_products_id, state: @product.state, state_max: @product.state_max, state_min: @product.state_min, type_product: @product.type_product, unit_basic: @product.unit_basic, unit_sale: @product.unit_sale, vat: @product.vat }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
