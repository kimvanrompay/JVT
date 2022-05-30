require "application_system_test_case"

class DealsTest < ApplicationSystemTestCase
  setup do
    @deal = deals(:one)
  end

  test "visiting the index" do
    visit deals_url
    assert_selector "h1", text: "Deals"
  end

  test "should create deal" do
    visit deals_url
    click_on "New deal"

    fill_in "Company", with: @deal.company
    fill_in "Fee", with: @deal.fee
    fill_in "Job", with: @deal.job
    fill_in "Month", with: @deal.month
    fill_in "Name", with: @deal.name
    fill_in "Start", with: @deal.start
    fill_in "Type", with: @deal.type
    fill_in "Value", with: @deal.value
    click_on "Create Deal"

    assert_text "Deal was successfully created"
    click_on "Back"
  end

  test "should update Deal" do
    visit deal_url(@deal)
    click_on "Edit this deal", match: :first

    fill_in "Company", with: @deal.company
    fill_in "Fee", with: @deal.fee
    fill_in "Job", with: @deal.job
    fill_in "Month", with: @deal.month
    fill_in "Name", with: @deal.name
    fill_in "Start", with: @deal.start
    fill_in "Type", with: @deal.type
    fill_in "Value", with: @deal.value
    click_on "Update Deal"

    assert_text "Deal was successfully updated"
    click_on "Back"
  end

  test "should destroy Deal" do
    visit deal_url(@deal)
    click_on "Destroy this deal", match: :first

    assert_text "Deal was successfully destroyed"
  end
end
