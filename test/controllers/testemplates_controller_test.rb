require 'test_helper'

class TestemplatesControllerTest < ActionController::TestCase
  setup do
    @testemplate = testemplates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testemplates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testemplate" do
    assert_difference('Testemplate.count') do
      post :create, testemplate: { field1: @testemplate.field1, field2: @testemplate.field2, field3: @testemplate.field3 }
    end

    assert_redirected_to testemplate_path(assigns(:testemplate))
  end

  test "should show testemplate" do
    get :show, id: @testemplate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testemplate
    assert_response :success
  end

  test "should update testemplate" do
    patch :update, id: @testemplate, testemplate: { field1: @testemplate.field1, field2: @testemplate.field2, field3: @testemplate.field3 }
    assert_redirected_to testemplate_path(assigns(:testemplate))
  end

  test "should destroy testemplate" do
    assert_difference('Testemplate.count', -1) do
      delete :destroy, id: @testemplate
    end

    assert_redirected_to testemplates_path
  end
end
