require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
#    get profiles_show_url, id: users(:Evan).profile_name
#    assert_response :success
#    assert_template 'profile/show'
  end

  test "should render a 404 on profile not found" do
#    get :show, id: "doesn't exist"
#    assert_response :not_found
  end

  test "that variables are assigned on succesful profile viewing" do
#    get profiles_show_url, id: users(:Evan).profile_name
#    assert assigns(:user)
#    assert_not_empty assigns(:statuses)
  end

  test "only shows the correct users statuses" do
#    get :show, id: users(:Evan).profile_name
#    assigns(:statuses).each do |status|
#      assert_equal users(:Evan), status.user
#    end
  end

end
