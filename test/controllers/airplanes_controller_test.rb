require 'test_helper'

class AirplanesControllerTest < ActionController::TestCase
  setup do
    @airplane = airplanes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:airplanes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create airplane" do
    assert_difference('Airplane.count') do
      post :create, airplane: { columns: @airplane.columns, name: @airplane.name, rows: @airplane.rows }
    end

    assert_redirected_to airplane_path(assigns(:airplane))
  end

  test "should show airplane" do
    get :show, id: @airplane
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @airplane
    assert_response :success
  end

  test "should update airplane" do
    patch :update, id: @airplane, airplane: { columns: @airplane.columns, name: @airplane.name, rows: @airplane.rows }
    assert_redirected_to airplane_path(assigns(:airplane))
  end

  test "should destroy airplane" do
    assert_difference('Airplane.count', -1) do
      delete :destroy, id: @airplane
    end

    assert_redirected_to airplanes_path
  end
end
