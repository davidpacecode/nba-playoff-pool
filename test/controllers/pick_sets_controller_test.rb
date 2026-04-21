require "test_helper"

class PickSetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pick_set = pick_sets(:one)
  end

  test "should get index" do
    get pick_sets_url
    assert_response :success
  end

  test "should get new" do
    get new_pick_set_url
    assert_response :success
  end

  test "should create pick_set" do
    assert_difference("PickSet.count") do
      post pick_sets_url, params: { pick_set: { bracket_id: @pick_set.bracket_id, name: @pick_set.name, user_id: @pick_set.user_id } }
    end

    assert_redirected_to pick_set_url(PickSet.last)
  end

  test "should show pick_set" do
    get pick_set_url(@pick_set)
    assert_response :success
  end

  test "should get edit" do
    get edit_pick_set_url(@pick_set)
    assert_response :success
  end

  test "should update pick_set" do
    patch pick_set_url(@pick_set), params: { pick_set: { bracket_id: @pick_set.bracket_id, name: @pick_set.name, user_id: @pick_set.user_id } }
    assert_redirected_to pick_set_url(@pick_set)
  end

  test "should destroy pick_set" do
    assert_difference("PickSet.count", -1) do
      delete pick_set_url(@pick_set)
    end

    assert_redirected_to pick_sets_url
  end
end
