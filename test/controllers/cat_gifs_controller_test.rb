require 'test_helper'

class CatGifsControllerTest < ActionController::TestCase
  setup do
    @cat_gif = cat_gifs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cat_gifs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cat_gif" do
    assert_difference('CatGif.count') do
      post :create, cat_gif: { score: @cat_gif.score, title: @cat_gif.title, url: @cat_gif.url }
    end

    assert_redirected_to cat_gif_path(assigns(:cat_gif))
  end

  test "should show cat_gif" do
    get :show, id: @cat_gif
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cat_gif
    assert_response :success
  end

  test "should update cat_gif" do
    patch :update, id: @cat_gif, cat_gif: { score: @cat_gif.score, title: @cat_gif.title, url: @cat_gif.url }
    assert_redirected_to cat_gif_path(assigns(:cat_gif))
  end

  test "should destroy cat_gif" do
    assert_difference('CatGif.count', -1) do
      delete :destroy, id: @cat_gif
    end

    assert_redirected_to cat_gifs_path
  end
end
