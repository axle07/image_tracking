require 'test_helper'

class SentImagesControllerTest < ActionController::TestCase
  setup do
    @sent_image = sent_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sent_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sent_image" do
    assert_difference('SentImage.count') do
      post :create, sent_image: { date_sent: @sent_image.date_sent, image_name: @sent_image.image_name, quantity: @sent_image.quantity, recipient: @sent_image.recipient, size_of_image: @sent_image.size_of_image }
    end

    assert_redirected_to sent_image_path(assigns(:sent_image))
  end

  test "should show sent_image" do
    get :show, id: @sent_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sent_image
    assert_response :success
  end

  test "should update sent_image" do
    patch :update, id: @sent_image, sent_image: { date_sent: @sent_image.date_sent, image_name: @sent_image.image_name, quantity: @sent_image.quantity, recipient: @sent_image.recipient, size_of_image: @sent_image.size_of_image }
    assert_redirected_to sent_image_path(assigns(:sent_image))
  end

  test "should destroy sent_image" do
    assert_difference('SentImage.count', -1) do
      delete :destroy, id: @sent_image
    end

    assert_redirected_to sent_images_path
  end
end
