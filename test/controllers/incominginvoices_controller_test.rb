require 'test_helper'

class IncominginvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incominginvoice = incominginvoices(:one)
  end

  test "should get index" do
    get incominginvoices_url
    assert_response :success
  end

  test "should get new" do
    get new_incominginvoice_url
    assert_response :success
  end

  test "should create incominginvoice" do
    assert_difference('Incominginvoice.count') do
      post incominginvoices_url, params: { incominginvoice: { amount: @incominginvoice.amount, date: @incominginvoice.date, number: @incominginvoice.number, supplier_id: @incominginvoice.supplier_id } }
    end

    assert_redirected_to incominginvoice_url(Incominginvoice.last)
  end

  test "should show incominginvoice" do
    get incominginvoice_url(@incominginvoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_incominginvoice_url(@incominginvoice)
    assert_response :success
  end

  test "should update incominginvoice" do
    patch incominginvoice_url(@incominginvoice), params: { incominginvoice: { amount: @incominginvoice.amount, date: @incominginvoice.date, number: @incominginvoice.number, supplier_id: @incominginvoice.supplier_id } }
    assert_redirected_to incominginvoice_url(@incominginvoice)
  end

  test "should destroy incominginvoice" do
    assert_difference('Incominginvoice.count', -1) do
      delete incominginvoice_url(@incominginvoice)
    end

    assert_redirected_to incominginvoices_url
  end
end
