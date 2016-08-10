require 'test_helper'

class PaperclipImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paperclip_image = paperclip_images(:one)
  end

  test "should get index" do
    get paperclip_images_url
    assert_response :success
  end

  test "should get new" do
    get new_paperclip_image_url
    assert_response :success
  end

  test "should create paperclip_image" do
    assert_difference('PaperclipImage.count') do
      post paperclip_images_url, params: { paperclip_image: {  } }
    end

    assert_redirected_to paperclip_image_url(PaperclipImage.last)
  end

  test "should show paperclip_image" do
    get paperclip_image_url(@paperclip_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_paperclip_image_url(@paperclip_image)
    assert_response :success
  end

  test "should update paperclip_image" do
    patch paperclip_image_url(@paperclip_image), params: { paperclip_image: {  } }
    assert_redirected_to paperclip_image_url(@paperclip_image)
  end

  test "should destroy paperclip_image" do
    assert_difference('PaperclipImage.count', -1) do
      delete paperclip_image_url(@paperclip_image)
    end

    assert_redirected_to paperclip_images_url
  end
end
