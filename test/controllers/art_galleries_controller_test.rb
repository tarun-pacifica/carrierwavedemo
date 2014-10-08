require 'test_helper'

class ArtGalleriesControllerTest < ActionController::TestCase
  setup do
    @art_gallery = art_galleries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:art_galleries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create art_gallery" do
    assert_difference('ArtGallery.count') do
      post :create, art_gallery: { avatar: @art_gallery.avatar, location: @art_gallery.location, name: @art_gallery.name }
    end

    assert_redirected_to art_gallery_path(assigns(:art_gallery))
  end

  test "should show art_gallery" do
    get :show, id: @art_gallery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @art_gallery
    assert_response :success
  end

  test "should update art_gallery" do
    patch :update, id: @art_gallery, art_gallery: { avatar: @art_gallery.avatar, location: @art_gallery.location, name: @art_gallery.name }
    assert_redirected_to art_gallery_path(assigns(:art_gallery))
  end

  test "should destroy art_gallery" do
    assert_difference('ArtGallery.count', -1) do
      delete :destroy, id: @art_gallery
    end

    assert_redirected_to art_galleries_path
  end
end
