require 'test_helper'

class OrderMenuItemsControllerTest < ActionController::TestCase
  setup do
    @order_menu_item = order_menu_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_menu_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_menu_item" do
    assert_difference('OrderMenuItem.count') do
      post :create, order_menu_item: { menu_item_id: @order_menu_item.menu_item_id, order_id: @order_menu_item.order_id, quantity: @order_menu_item.quantity }
    end

    assert_redirected_to order_menu_item_path(assigns(:order_menu_item))
  end

  test "should show order_menu_item" do
    get :show, id: @order_menu_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_menu_item
    assert_response :success
  end

  test "should update order_menu_item" do
    put :update, id: @order_menu_item, order_menu_item: { menu_item_id: @order_menu_item.menu_item_id, order_id: @order_menu_item.order_id, quantity: @order_menu_item.quantity }
    assert_redirected_to order_menu_item_path(assigns(:order_menu_item))
  end

  test "should destroy order_menu_item" do
    assert_difference('OrderMenuItem.count', -1) do
      delete :destroy, id: @order_menu_item
    end

    assert_redirected_to order_menu_items_path
  end
end
