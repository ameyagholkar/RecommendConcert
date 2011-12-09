require 'test_helper'

class SimilarArtistsControllerTest < ActionController::TestCase
  setup do
    @similar_artist = similar_artists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:similar_artists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create similar_artist" do
    assert_difference('SimilarArtist.count') do
      post :create, similar_artist: @similar_artist.attributes
    end

    assert_redirected_to similar_artist_path(assigns(:similar_artist))
  end

  test "should show similar_artist" do
    get :show, id: @similar_artist.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @similar_artist.to_param
    assert_response :success
  end

  test "should update similar_artist" do
    put :update, id: @similar_artist.to_param, similar_artist: @similar_artist.attributes
    assert_redirected_to similar_artist_path(assigns(:similar_artist))
  end

  test "should destroy similar_artist" do
    assert_difference('SimilarArtist.count', -1) do
      delete :destroy, id: @similar_artist.to_param
    end

    assert_redirected_to similar_artists_path
  end
end
