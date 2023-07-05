require "application_system_test_case"

class KtensTest < ApplicationSystemTestCase
  setup do
    @kten = ktens(:one)
  end

  test "visiting the index" do
    visit ktens_url
    assert_selector "h1", text: "Ktens"
  end

  test "should create kten" do
    visit ktens_url
    click_on "New kten"

    fill_in "Email", with: @kten.email
    fill_in "First name", with: @kten.first_name
    fill_in "Last name", with: @kten.last_name
    fill_in "Phone", with: @kten.phone
    fill_in "Twitter", with: @kten.twitter
    click_on "Create Kten"

    assert_text "Kten was successfully created"
    click_on "Back"
  end

  test "should update Kten" do
    visit kten_url(@kten)
    click_on "Edit this kten", match: :first

    fill_in "Email", with: @kten.email
    fill_in "First name", with: @kten.first_name
    fill_in "Last name", with: @kten.last_name
    fill_in "Phone", with: @kten.phone
    fill_in "Twitter", with: @kten.twitter
    click_on "Update Kten"

    assert_text "Kten was successfully updated"
    click_on "Back"
  end

  test "should destroy Kten" do
    visit kten_url(@kten)
    click_on "Destroy this kten", match: :first

    assert_text "Kten was successfully destroyed"
  end
end
