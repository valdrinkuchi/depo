require "application_system_test_case"

class CustomercategoriesTest < ApplicationSystemTestCase
  setup do
    @customercategory = customercategories(:one)
  end

  test "visiting the index" do
    visit customercategories_url
    assert_selector "h1", text: "Customercategories"
  end

  test "creating a Customercategory" do
    visit customercategories_url
    click_on "New Customercategory"

    fill_in "Type", with: @customercategory.type
    click_on "Create Customercategory"

    assert_text "Customercategory was successfully created"
    click_on "Back"
  end

  test "updating a Customercategory" do
    visit customercategories_url
    click_on "Edit", match: :first

    fill_in "Type", with: @customercategory.type
    click_on "Update Customercategory"

    assert_text "Customercategory was successfully updated"
    click_on "Back"
  end

  test "destroying a Customercategory" do
    visit customercategories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customercategory was successfully destroyed"
  end
end
