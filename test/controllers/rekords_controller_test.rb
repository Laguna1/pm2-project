require "test_helper"

class RekordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rekord = rekords(:one)
  end

  test "should get index" do
    get rekords_url
    assert_response :success
  end

  test "should get new" do
    get new_rekord_url
    assert_response :success
  end

  test "should create rekord" do
    assert_difference('Rekord.count') do
      post rekords_url, params: { rekord: { description: @rekord.description, name: @rekord.name, user_id: @rekord.user_id } }
    end

    assert_redirected_to rekord_url(Rekord.last)
  end

  test "should show rekord" do
    get rekord_url(@rekord)
    assert_response :success
  end

  test "should get edit" do
    get edit_rekord_url(@rekord)
    assert_response :success
  end

  test "should update rekord" do
    patch rekord_url(@rekord), params: { rekord: { description: @rekord.description, name: @rekord.name, user_id: @rekord.user_id } }
    assert_redirected_to rekord_url(@rekord)
  end

  test "should destroy rekord" do
    assert_difference('Rekord.count', -1) do
      delete rekord_url(@rekord)
    end

    assert_redirected_to rekords_url
  end
end
