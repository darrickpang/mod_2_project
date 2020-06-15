require "application_system_test_case"

class PictureTagsTest < ApplicationSystemTestCase
  setup do
    @picture_tag = picture_tags(:one)
  end

  test "visiting the index" do
    visit picture_tags_url
    assert_selector "h1", text: "Picture Tags"
  end

  test "creating a Picture tag" do
    visit picture_tags_url
    click_on "New Picture Tag"

    click_on "Create Picture tag"

    assert_text "Picture tag was successfully created"
    click_on "Back"
  end

  test "updating a Picture tag" do
    visit picture_tags_url
    click_on "Edit", match: :first

    click_on "Update Picture tag"

    assert_text "Picture tag was successfully updated"
    click_on "Back"
  end

  test "destroying a Picture tag" do
    visit picture_tags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Picture tag was successfully destroyed"
  end
end
