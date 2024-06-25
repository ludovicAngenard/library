require "test_helper"

class EmpruntsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emprunt = emprunts(:one)
  end

  test "should get index" do
    get emprunts_url
    assert_response :success
  end

  test "should get new" do
    get new_emprunt_url
    assert_response :success
  end

  test "should create emprunt" do
    assert_difference("Emprunt.count") do
      post emprunts_url, params: { emprunt: { book_id: @emprunt.book_id, ended_at: @emprunt.ended_at, started_at: @emprunt.started_at, user_id: @emprunt.user_id } }
    end

    assert_redirected_to emprunt_url(Emprunt.last)
  end

  test "should show emprunt" do
    get emprunt_url(@emprunt)
    assert_response :success
  end

  test "should get edit" do
    get edit_emprunt_url(@emprunt)
    assert_response :success
  end

  test "should update emprunt" do
    patch emprunt_url(@emprunt), params: { emprunt: { book_id: @emprunt.book_id, ended_at: @emprunt.ended_at, started_at: @emprunt.started_at, user_id: @emprunt.user_id } }
    assert_redirected_to emprunt_url(@emprunt)
  end

  test "should destroy emprunt" do
    assert_difference("Emprunt.count", -1) do
      delete emprunt_url(@emprunt)
    end

    assert_redirected_to emprunts_url
  end
end
