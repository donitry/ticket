require 'test_helper'

class TicketAppsControllerTest < ActionController::TestCase
  setup do
    @ticket_app = ticket_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ticket_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticket_app" do
    assert_difference('TicketApp.count') do
      post :create, ticket_app: { address: @ticket_app.address, email_address: @ticket_app.email_address, name: @ticket_app.name, price_paid: @ticket_app.price_paid, seat_id_seq: @ticket_app.seat_id_seq }
    end

    assert_redirected_to ticket_app_path(assigns(:ticket_app))
  end

  test "should show ticket_app" do
    get :show, id: @ticket_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ticket_app
    assert_response :success
  end

  test "should update ticket_app" do
    patch :update, id: @ticket_app, ticket_app: { address: @ticket_app.address, email_address: @ticket_app.email_address, name: @ticket_app.name, price_paid: @ticket_app.price_paid, seat_id_seq: @ticket_app.seat_id_seq }
    assert_redirected_to ticket_app_path(assigns(:ticket_app))
  end

  test "should destroy ticket_app" do
    assert_difference('TicketApp.count', -1) do
      delete :destroy, id: @ticket_app
    end

    assert_redirected_to ticket_apps_path
  end
end
