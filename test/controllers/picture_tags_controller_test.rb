require 'test_helper'

class PictureTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @picture_tag = picture_tags(:one)
  end

  test "should get index" do
    get picture_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_picture_tag_url
    assert_response :success
  end

  test "should create picture_tag" do
    assert_difference('PictureTag.count') do
      post picture_tags_url, params: { picture_tag: {  } }
    end

    assert_redirected_to picture_tag_url(PictureTag.last)
  end

  test "should show picture_tag" do
    get picture_tag_url(@picture_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_picture_tag_url(@picture_tag)
    assert_response :success
  end

  test "should update picture_tag" do
    patch picture_tag_url(@picture_tag), params: { picture_tag: {  } }
    assert_redirected_to picture_tag_url(@picture_tag)
  end

  test "should destroy picture_tag" do
    assert_difference('PictureTag.count', -1) do
      delete picture_tag_url(@picture_tag)
    end

    assert_redirected_to picture_tags_url
  end
end
