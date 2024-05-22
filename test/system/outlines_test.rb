require "application_system_test_case"

class OutlinesTest < ApplicationSystemTestCase
  setup do
    @outline = outlines(:one)
  end

  test "visiting the index" do
    visit outlines_url
    assert_selector "h1", text: "Outlines"
  end

  test "should create outline" do
    visit outlines_url
    click_on "New outline"

    fill_in "Outline desc", with: @outline.outline_desc
    fill_in "Outline end", with: @outline.outline_end
    fill_in "Outline start", with: @outline.outline_start
    fill_in "Project num", with: @outline.project_num
    click_on "Create Outline"

    assert_text "Outline was successfully created"
    click_on "Back"
  end

  test "should update Outline" do
    visit outline_url(@outline)
    click_on "Edit this outline", match: :first

    fill_in "Outline desc", with: @outline.outline_desc
    fill_in "Outline end", with: @outline.outline_end
    fill_in "Outline start", with: @outline.outline_start
    fill_in "Project num", with: @outline.project_num
    click_on "Update Outline"

    assert_text "Outline was successfully updated"
    click_on "Back"
  end

  test "should destroy Outline" do
    visit outline_url(@outline)
    click_on "Destroy this outline", match: :first

    assert_text "Outline was successfully destroyed"
  end
end
