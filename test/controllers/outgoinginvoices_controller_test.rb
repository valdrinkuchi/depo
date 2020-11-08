require 'test_helper'

class OutgoinginvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @outgoinginvoice = outgoinginvoices(:one)
  end

  test "should get index" do
    get outgoinginvoices_url
    assert_response :success
  end

  test "should get new" do
    get new_outgoinginvoice_url
    assert_response :success
  end

  test "should create outgoinginvoice" do
    assert_difference('Outgoinginvoice.count') do
      post outgoinginvoices_url, params: { outgoinginvoice: { customer_id: @outgoinginvoice.customer_id, date: @outgoinginvoice.date, number: @outgoinginvoice.number } }
    end

    assert_redirected_to outgoinginvoice_url(Outgoinginvoice.last)
  end

  test "should show outgoinginvoice" do
    get outgoinginvoice_url(@outgoinginvoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_outgoinginvoice_url(@outgoinginvoice)
    assert_response :success
  end

  test "should update outgoinginvoice" do
    patch outgoinginvoice_url(@outgoinginvoice), params: { outgoinginvoice: { customer_id: @outgoinginvoice.customer_id, date: @outgoinginvoice.date, number: @outgoinginvoice.number } }
    assert_redirected_to outgoinginvoice_url(@outgoinginvoice)
  end

  test "should destroy outgoinginvoice" do
    assert_difference('Outgoinginvoice.count', -1) do
      delete outgoinginvoice_url(@outgoinginvoice)
    end

    assert_redirected_to outgoinginvoices_url
  end
end
