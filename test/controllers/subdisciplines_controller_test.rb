require 'test_helper'

class SubdisciplinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subdiscipline = subdisciplines(:one)
  end

  test "should get index" do
    get subdisciplines_url
    assert_response :success
  end

  test "should get new" do
    get new_subdiscipline_url
    assert_response :success
  end

  test "should create subdiscipline" do
    assert_difference('Subdiscipline.count') do
      post subdisciplines_url, params: { subdiscipline: { discipline_id: @subdiscipline.discipline_id, name: @subdiscipline.name } }
    end

    assert_redirected_to subdiscipline_url(Subdiscipline.last)
  end

  test "should show subdiscipline" do
    get subdiscipline_url(@subdiscipline)
    assert_response :success
  end

  test "should get edit" do
    get edit_subdiscipline_url(@subdiscipline)
    assert_response :success
  end

  test "should update subdiscipline" do
    patch subdiscipline_url(@subdiscipline), params: { subdiscipline: { discipline_id: @subdiscipline.discipline_id, name: @subdiscipline.name } }
    assert_redirected_to subdiscipline_url(@subdiscipline)
  end

  test "should destroy subdiscipline" do
    assert_difference('Subdiscipline.count', -1) do
      delete subdiscipline_url(@subdiscipline)
    end

    assert_redirected_to subdisciplines_url
  end
end
