require "application_system_test_case"

class RekordsTest < ApplicationSystemTestCase
  setup do
    @rekord = rekords(:one)
  end

  test "visiting the index" do
    visit rekords_url
    assert_selector "h1", text: "Rekords"
  end

  test "creating a Rekord" do
    visit rekords_url
    click_on "New Rekord"

    fill_in "Description", with: @rekord.description
    fill_in "Name", with: @rekord.name
    fill_in "User", with: @rekord.user_id
    click_on "Create Rekord"

    assert_text "Rekord was successfully created"
    click_on "Back"
  end

  test "updating a Rekord" do
    visit rekords_url
    click_on "Edit", match: :first

    fill_in "Description", with: @rekord.description
    fill_in "Name", with: @rekord.name
    fill_in "User", with: @rekord.user_id
    click_on "Update Rekord"

    assert_text "Rekord was successfully updated"
    click_on "Back"
  end

  test "destroying a Rekord" do
    visit rekords_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rekord was successfully destroyed"
  end
end
