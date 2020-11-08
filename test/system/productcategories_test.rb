require "application_system_test_case"

class ProductcategoriesTest < ApplicationSystemTestCase
  setup do
    @productcategory = productcategories(:one)
  end

  test "visiting the index" do
    visit productcategories_url
    assert_selector "h1", text: "Productcategories"
  end

  test "creating a Productcategory" do
    visit productcategories_url
    click_on "New Productcategory"

    fill_in "Name", with: @productcategory.name
    click_on "Create Productcategory"

    assert_text "Productcategory was successfully created"
    click_on "Back"
  end

  test "updating a Productcategory" do
    visit productcategories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @productcategory.name
    click_on "Update Productcategory"

    assert_text "Productcategory was successfully updated"
    click_on "Back"
  end

  test "destroying a Productcategory" do
    visit productcategories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Productcategory was successfully destroyed"
  end
end
