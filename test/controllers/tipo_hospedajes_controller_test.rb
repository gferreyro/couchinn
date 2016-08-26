require 'test_helper'

class TipoHospedajesControllerTest < ActionController::TestCase
  setup do
    @tipo_hospedaje = tipo_hospedajes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_hospedajes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_hospedaje" do
    assert_difference('TipoHospedaje.count') do
      post :create, tipo_hospedaje: { descripcion: @tipo_hospedaje.descripcion }
    end

    assert_redirected_to tipo_hospedaje_path(assigns(:tipo_hospedaje))
  end

  test "should show tipo_hospedaje" do
    get :show, id: @tipo_hospedaje
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_hospedaje
    assert_response :success
  end

  test "should update tipo_hospedaje" do
    patch :update, id: @tipo_hospedaje, tipo_hospedaje: { descripcion: @tipo_hospedaje.descripcion }
    assert_redirected_to tipo_hospedaje_path(assigns(:tipo_hospedaje))
  end

  test "should destroy tipo_hospedaje" do
    assert_difference('TipoHospedaje.count', -1) do
      delete :destroy, id: @tipo_hospedaje
    end

    assert_redirected_to tipo_hospedajes_path
  end
end
