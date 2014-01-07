require 'test_helper'

class BookHistoriesControllerTest < ActionController::TestCase
  setup do
    @book_history = book_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_history" do
    assert_difference('BookHistory.count') do
      post :create, book_history: { book_id: @book_history.book_id, checkout_date: @book_history.checkout_date, return_date: @book_history.return_date, user_id: @book_history.user_id }
    end

    assert_redirected_to book_history_path(assigns(:book_history))
  end

  test "should show book_history" do
    get :show, id: @book_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_history
    assert_response :success
  end

  test "should update book_history" do
    patch :update, id: @book_history, book_history: { book_id: @book_history.book_id, checkout_date: @book_history.checkout_date, return_date: @book_history.return_date, user_id: @book_history.user_id }
    assert_redirected_to book_history_path(assigns(:book_history))
  end

  test "should destroy book_history" do
    assert_difference('BookHistory.count', -1) do
      delete :destroy, id: @book_history
    end

    assert_redirected_to book_histories_path
  end
end
