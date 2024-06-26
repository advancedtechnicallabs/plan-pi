require "test_helper"

class OutlinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @outline = outlines(:one)
  end

  test "should get index" do
    get outlines_url
    assert_response :success
  end

  test "should get new" do
    get new_outline_url
    assert_response :success
  end

  test "should create outline" do
    assert_difference("Outline.count") do
      post outlines_url, params: { outline: { outline_desc: @outline.outline_desc, outline_end: @outline.outline_end, outline_start: @outline.outline_start, project_num: @outline.project_num } }
    end

    assert_redirected_to outline_url(Outline.last)
  end

  test "should show outline" do
    get outline_url(@outline)
    assert_response :success
  end

  test "should get edit" do
    get edit_outline_url(@outline)
    assert_response :success
  end

  test "should update outline" do
    patch outline_url(@outline), params: { outline: { outline_desc: @outline.outline_desc, outline_end: @outline.outline_end, outline_start: @outline.outline_start, project_num: @outline.project_num } }
    assert_redirected_to outline_url(@outline)
  end

  test "should destroy outline" do
    assert_difference("Outline.count", -1) do
      delete outline_url(@outline)
    end

    assert_redirected_to outlines_url
  end
end
