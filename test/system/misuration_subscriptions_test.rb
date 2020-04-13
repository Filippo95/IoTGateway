require "application_system_test_case"

class MisurationSubscriptionsTest < ApplicationSystemTestCase
  setup do
    @misuration_subscription = misuration_subscriptions(:one)
  end

  test "visiting the index" do
    visit misuration_subscriptions_url
    assert_selector "h1", text: "Misuration Subscriptions"
  end

  test "creating a Misuration subscription" do
    visit misuration_subscriptions_url
    click_on "New Misuration Subscription"

    fill_in "Mac", with: @misuration_subscription.mac
    fill_in "User", with: @misuration_subscription.user_id
    click_on "Create Misuration subscription"

    assert_text "Misuration subscription was successfully created"
    click_on "Back"
  end

  test "updating a Misuration subscription" do
    visit misuration_subscriptions_url
    click_on "Edit", match: :first

    fill_in "Mac", with: @misuration_subscription.mac
    fill_in "User", with: @misuration_subscription.user_id
    click_on "Update Misuration subscription"

    assert_text "Misuration subscription was successfully updated"
    click_on "Back"
  end

  test "destroying a Misuration subscription" do
    visit misuration_subscriptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Misuration subscription was successfully destroyed"
  end
end
