require "application_system_test_case"

class EmpruntsTest < ApplicationSystemTestCase
  setup do
    @emprunt = emprunts(:one)
  end

  test "visiting the index" do
    visit emprunts_url
    assert_selector "h1", text: "Emprunts"
  end

  test "should create emprunt" do
    visit emprunts_url
    click_on "New emprunt"

    fill_in "Book", with: @emprunt.book_id
    fill_in "Ended at", with: @emprunt.ended_at
    fill_in "Started at", with: @emprunt.started_at
    fill_in "User", with: @emprunt.user_id
    click_on "Create Emprunt"

    assert_text "Emprunt was successfully created"
    click_on "Back"
  end

  test "should update Emprunt" do
    visit emprunt_url(@emprunt)
    click_on "Edit this emprunt", match: :first

    fill_in "Book", with: @emprunt.book_id
    fill_in "Ended at", with: @emprunt.ended_at
    fill_in "Started at", with: @emprunt.started_at
    fill_in "User", with: @emprunt.user_id
    click_on "Update Emprunt"

    assert_text "Emprunt was successfully updated"
    click_on "Back"
  end

  test "should destroy Emprunt" do
    visit emprunt_url(@emprunt)
    click_on "Destroy this emprunt", match: :first

    assert_text "Emprunt was successfully destroyed"
  end
end
