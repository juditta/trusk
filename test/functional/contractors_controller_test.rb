require 'test_helper'

class ContractorsControllerTest < ActionController::TestCase
  setup do
    @contractor = contractors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contractors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contractor" do
    assert_difference('Contractor.count') do
      post :create, contractor: { bank_account: @contractor.bank_account, city: @contractor.city, code: @contractor.code, discount: @contractor.discount, email: @contractor.email, fax: @contractor.fax, maturity: @contractor.maturity, name: @contractor.name, pesel: @contractor.pesel, phone1: @contractor.phone1, phone2: @contractor.phone2, regon: @contractor.regon, sale: @contractor.sale, short_name: @contractor.short_name, street: @contractor.street, type: @contractor.type, zone_id: @contractor.zone_id }
    end

    assert_redirected_to contractor_path(assigns(:contractor))
  end

  test "should show contractor" do
    get :show, id: @contractor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contractor
    assert_response :success
  end

  test "should update contractor" do
    put :update, id: @contractor, contractor: { bank_account: @contractor.bank_account, city: @contractor.city, code: @contractor.code, discount: @contractor.discount, email: @contractor.email, fax: @contractor.fax, maturity: @contractor.maturity, name: @contractor.name, pesel: @contractor.pesel, phone1: @contractor.phone1, phone2: @contractor.phone2, regon: @contractor.regon, sale: @contractor.sale, short_name: @contractor.short_name, street: @contractor.street, type: @contractor.type, zone_id: @contractor.zone_id }
    assert_redirected_to contractor_path(assigns(:contractor))
  end

  test "should destroy contractor" do
    assert_difference('Contractor.count', -1) do
      delete :destroy, id: @contractor
    end

    assert_redirected_to contractors_path
  end
end
