require "application_system_test_case"

class CarsTest < ApplicationSystemTestCase
  setup do
    @car = cars(:one)
  end

  test "visiting the index" do
    visit cars_url
    assert_selector "h1", text: "Cars"
  end

  test "should create car" do
    visit cars_url
    click_on "New car"

    fill_in "Email", with: @car.email
    fill_in "First name", with: @car.first_name
    fill_in "Last name", with: @car.last_name
    fill_in "Phone", with: @car.phone
    fill_in "Twitter", with: @car.twitter
    click_on "Create Car"

    assert_text "Car was successfully created"
    click_on "Back"
  end

  test "should update Car" do
    visit car_url(@car)
    click_on "Edit this car", match: :first

    fill_in "Email", with: @car.email
    fill_in "First name", with: @car.first_name
    fill_in "Last name", with: @car.last_name
    fill_in "Phone", with: @car.phone
    fill_in "Twitter", with: @car.twitter
    click_on "Update Car"

    assert_text "Car was successfully updated"
    click_on "Back"
  end

  test "should destroy Car" do
    visit car_url(@car)
    click_on "Destroy this car", match: :first

    assert_text "Car was successfully destroyed"
  end
end
