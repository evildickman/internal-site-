require 'test_helper'

class ActivityPostsControllerTest < ActionController::TestCase
  setup do
    @activity_post = activity_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activity_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activity_post" do
    assert_difference('ActivityPost.count') do
      post :create, activity_post: { content: @activity_post.content, title: @activity_post.title }
    end

    assert_redirected_to activity_post_path(assigns(:activity_post))
  end

  test "should show activity_post" do
    get :show, id: @activity_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @activity_post
    assert_response :success
  end

  test "should update activity_post" do
    patch :update, id: @activity_post, activity_post: { content: @activity_post.content, title: @activity_post.title }
    assert_redirected_to activity_post_path(assigns(:activity_post))
  end

  test "should destroy activity_post" do
    assert_difference('ActivityPost.count', -1) do
      delete :destroy, id: @activity_post
    end

    assert_redirected_to activity_posts_path
  end
end
