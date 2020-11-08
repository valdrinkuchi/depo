require "application_system_test_case"

class IncominginvoicesTest < ApplicationSystemTestCase
  setup do
    @incominginvoice = incominginvoices(:one)
  end

  test "visiting the index" do
    visit incominginvoices_url
    assert_selector "h1", text: "Incominginvoices"
  end

  test "creating a Incominginvoice" do
    visit incominginvoices_url
    click_on "New Incominginvoice"

    fill_in "Amount", with: @incominginvoice.amount
    fill_in "Date", with: @incominginvoice.date
    fill_in "Number", with: @incominginvoice.number
    fill_in "Supplier", with: @incominginvoice.supplier_id
    click_on "Create Incominginvoice"

    assert_text "Incominginvoice was successfully created"
    click_on "Back"
  end

  test "updating a Incominginvoice" do
    visit incominginvoices_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @incominginvoice.amount
    fill_in "Date", with: @incominginvoice.date
    fill_in "Number", with: @incominginvoice.number
    fill_in "Supplier", with: @incominginvoice.supplier_id
    click_on "Update Incominginvoice"

    assert_text "Incominginvoice was successfully updated"
    click_on "Back"
  end

  test "destroying a Incominginvoice" do
    visit incominginvoices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incominginvoice was successfully destroyed"
  end
end
