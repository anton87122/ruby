require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { adults: @user.adults, budget_type: @user.budget_type, children: @user.children, departure_date: @user.departure_date, fixed_dates: @user.fixed_dates, flexible_dates: @user.flexible_dates, flight_expectaion_type: @user.flight_expectaion_type, from: @user.from, lead_type: @user.lead_type, lodging_expectation_type: @user.lodging_expectation_type, lodging_preference_type: @user.lodging_preference_type, mail: @user.mail, name: @user.name, nights: @user.nights, online_reviews_type: @user.online_reviews_type, password: @user.password, to: @user.to, travel_type: @user.travel_type, traveller_profile_type: @user.traveller_profile_type }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { adults: @user.adults, budget_type: @user.budget_type, children: @user.children, departure_date: @user.departure_date, fixed_dates: @user.fixed_dates, flexible_dates: @user.flexible_dates, flight_expectaion_type: @user.flight_expectaion_type, from: @user.from, lead_type: @user.lead_type, lodging_expectation_type: @user.lodging_expectation_type, lodging_preference_type: @user.lodging_preference_type, mail: @user.mail, name: @user.name, nights: @user.nights, online_reviews_type: @user.online_reviews_type, password: @user.password, to: @user.to, travel_type: @user.travel_type, traveller_profile_type: @user.traveller_profile_type }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
