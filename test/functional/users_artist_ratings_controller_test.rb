require 'test_helper'

class UsersArtistRatingsControllerTest < ActionController::TestCase
  setup do
    @users_artist_rating = users_artist_ratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_artist_ratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_artist_rating" do
    assert_difference('UsersArtistRating.count') do
      post :create, users_artist_rating: @users_artist_rating.attributes
    end

    assert_redirected_to users_artist_rating_path(assigns(:users_artist_rating))
  end

  test "should show users_artist_rating" do
    get :show, id: @users_artist_rating.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_artist_rating.to_param
    assert_response :success
  end

  test "should update users_artist_rating" do
    put :update, id: @users_artist_rating.to_param, users_artist_rating: @users_artist_rating.attributes
    assert_redirected_to users_artist_rating_path(assigns(:users_artist_rating))
  end

  test "should destroy users_artist_rating" do
    assert_difference('UsersArtistRating.count', -1) do
      delete :destroy, id: @users_artist_rating.to_param
    end

    assert_redirected_to users_artist_ratings_path
  end
end
