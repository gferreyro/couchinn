require 'test_helper'

class AccomodationsControllerTest < ActionController::TestCase
  setup do
    @accomodation = accomodations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accomodations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accomodation" do
    assert_difference('Accomodation.count') do
      post :create, accomodation: { descripcion: @accomodation.descripcion, imagen: @accomodation.imagen, titulo: @accomodation.titulo }
    end

    assert_redirected_to accomodation_path(assigns(:accomodation))
  end

  test "should show accomodation" do
    get :show, id: @accomodation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accomodation
    assert_response :success
  end

  test "should update accomodation" do
    patch :update, id: @accomodation, accomodation: { descripcion: @accomodation.descripcion, imagen: @accomodation.imagen, titulo: @accomodation.titulo }
    assert_redirected_to accomodation_path(assigns(:accomodation))
  end

  test "should destroy accomodation" do
    assert_difference('Accomodation.count', -1) do
      delete :destroy, id: @accomodation
    end

    assert_redirected_to accomodations_path
  end
end
