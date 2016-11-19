require 'test_helper'

class MunecosControllerTest < ActionController::TestCase
  setup do
    @muneco = munecos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:munecos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create muneco" do
    assert_difference('Muneco.count') do
      post :create, muneco: { cost: @muneco.cost, description: @muneco.description, name: @muneco.name, picture: @muneco.picture }
    end

    assert_redirected_to muneco_path(assigns(:muneco))
  end

  test "should show muneco" do
    get :show, id: @muneco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @muneco
    assert_response :success
  end

  test "should update muneco" do
    patch :update, id: @muneco, muneco: { cost: @muneco.cost, description: @muneco.description, name: @muneco.name, picture: @muneco.picture }
    assert_redirected_to muneco_path(assigns(:muneco))
  end

  test "should destroy muneco" do
    assert_difference('Muneco.count', -1) do
      delete :destroy, id: @muneco
    end

    assert_redirected_to munecos_path
  end
end
