require 'test_helper'

class CollboratorsControllerTest < ActionController::TestCase
  setup do
    @collborator = collborators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:collborators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create collborator" do
    assert_difference('Collborator.count') do
      post :create, collborator: { comments: @collborator.comments, first_name: @collborator.first_name, last_name: @collborator.last_name, project_link: @collborator.project_link, year: @collborator.year }
    end

    assert_redirected_to collborator_path(assigns(:collborator))
  end

  test "should show collborator" do
    get :show, id: @collborator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @collborator
    assert_response :success
  end

  test "should update collborator" do
    patch :update, id: @collborator, collborator: { comments: @collborator.comments, first_name: @collborator.first_name, last_name: @collborator.last_name, project_link: @collborator.project_link, year: @collborator.year }
    assert_redirected_to collborator_path(assigns(:collborator))
  end

  test "should destroy collborator" do
    assert_difference('Collborator.count', -1) do
      delete :destroy, id: @collborator
    end

    assert_redirected_to collborators_path
  end
end
