require "application_system_test_case"

class OutgoinginvoicesTest < ApplicationSystemTestCase
  setup do
    @outgoinginvoice = outgoinginvoices(:one)
  end

  test "visiting the index" do
    visit outgoinginvoices_url
    assert_selector "h1", text: "Outgoinginvoices"
  end

  test "creating a Outgoinginvoice" do
    visit outgoinginvoices_url
    click_on "New Outgoinginvoice"

    fill_in "Customer", with: @outgoinginvoice.customer_id
    fill_in "Date", with: @outgoinginvoice.date
    fill_in "Number", with: @outgoinginvoice.number
    click_on "Create Outgoinginvoice"

    assert_text "Outgoinginvoice was successfully created"
    click_on "Back"
  end

  test "updating a Outgoinginvoice" do
    visit outgoinginvoices_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @outgoinginvoice.customer_id
    fill_in "Date", with: @outgoinginvoice.date
    fill_in "Number", with: @outgoinginvoice.number
    click_on "Update Outgoinginvoice"

    assert_text "Outgoinginvoice was successfully updated"
    click_on "Back"
  end

  test "destroying a Outgoinginvoice" do
    visit outgoinginvoices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Outgoinginvoice was successfully destroyed"
  end
end
