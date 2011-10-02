require 'test_helper'

class TissueSamplesControllerTest < ActionController::TestCase
  setup do
    @tissue_sample = tissue_samples(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tissue_samples)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tissue_sample" do
    assert_difference('TissueSample.count') do
      post :create, tissue_sample: @tissue_sample.attributes
    end

    assert_redirected_to tissue_sample_path(assigns(:tissue_sample))
  end

  test "should show tissue_sample" do
    get :show, id: @tissue_sample.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tissue_sample.to_param
    assert_response :success
  end

  test "should update tissue_sample" do
    put :update, id: @tissue_sample.to_param, tissue_sample: @tissue_sample.attributes
    assert_redirected_to tissue_sample_path(assigns(:tissue_sample))
  end

  test "should destroy tissue_sample" do
    assert_difference('TissueSample.count', -1) do
      delete :destroy, id: @tissue_sample.to_param
    end

    assert_redirected_to tissue_samples_path
  end
end
