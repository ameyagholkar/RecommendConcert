require 'test_helper'

class LikedGenresControllerTest < ActionController::TestCase
  setup do
    @liked_genre = liked_genres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:liked_genres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create liked_genre" do
    assert_difference('LikedGenre.count') do
      post :create, liked_genre: @liked_genre.attributes
    end

    assert_redirected_to liked_genre_path(assigns(:liked_genre))
  end

  test "should show liked_genre" do
    get :show, id: @liked_genre.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @liked_genre.to_param
    assert_response :success
  end

  test "should update liked_genre" do
    put :update, id: @liked_genre.to_param, liked_genre: @liked_genre.attributes
    assert_redirected_to liked_genre_path(assigns(:liked_genre))
  end

  test "should destroy liked_genre" do
    assert_difference('LikedGenre.count', -1) do
      delete :destroy, id: @liked_genre.to_param
    end

    assert_redirected_to liked_genres_path
  end
end
