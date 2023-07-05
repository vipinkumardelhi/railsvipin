require "test_helper"

class KtensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kten = ktens(:one)
  end

  test "should get index" do
    get ktens_url
    assert_response :success
  end

  test "should get new" do
    get new_kten_url
    assert_response :success
  end

  test "should create kten" do
    assert_difference("Kten.count") do
      post ktens_url, params: { kten: { email: @kten.email, first_name: @kten.first_name, last_name: @kten.last_name, phone: @kten.phone, twitter: @kten.twitter } }
    end

    assert_redirected_to kten_url(Kten.last)
  end

  test "should show kten" do
    get kten_url(@kten)
    assert_response :success
  end

  test "should get edit" do
    get edit_kten_url(@kten)
    assert_response :success
  end

  test "should update kten" do
    patch kten_url(@kten), params: { kten: { email: @kten.email, first_name: @kten.first_name, last_name: @kten.last_name, phone: @kten.phone, twitter: @kten.twitter } }
    assert_redirected_to kten_url(@kten)
  end

  test "should destroy kten" do
    assert_difference("Kten.count", -1) do
      delete kten_url(@kten)
    end

    assert_redirected_to ktens_url
  end
end
