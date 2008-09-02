require File.dirname(__FILE__) + '/../test_helper'

class DealsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:deals)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_deal
    assert_difference('Deal.count') do
      post :create, :deal => { }
    end

    assert_redirected_to deal_path(assigns(:deal))
  end

  def test_should_show_deal
    get :show, :id => deals(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => deals(:one).id
    assert_response :success
  end

  def test_should_update_deal
    put :update, :id => deals(:one).id, :deal => { }
    assert_redirected_to deal_path(assigns(:deal))
  end

  def test_should_destroy_deal
    assert_difference('Deal.count', -1) do
      delete :destroy, :id => deals(:one).id
    end

    assert_redirected_to deals_path
  end
end
