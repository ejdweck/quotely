require 'test_helper'

class StatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status = statuses(:one)
  end

  test "should get index" do
    get statuses_url
    assert_response :success
  end

  test "should be redirected when user is not logged in" do
    get :new
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should render the new page when logged in" do
    sign_in user(:Rob)
    get :new
    assert_response :success
  end


  test "should create status" do
    assert_difference('Status.count') do
      post statuses_url, params: { status: { content: @status.content } }
    end

    assert_redirected_to status_url(Status.last)
  end

  test "should show status" do
    get status_url(@status)
    assert_response :success
  end

  test "should get edit" do
    get edit_status_url(@status)
    assert_response :success
  end

  test "should update status" do
    patch status_url(@status), params: { status: { content: @status.content } }
    assert_redirected_to status_url(@status)
  end

  test "should destroy status" do
    assert_difference('Status.count', -1) do
      delete status_url(@status)
    end

    assert_redirected_to statuses_url
  end
end
