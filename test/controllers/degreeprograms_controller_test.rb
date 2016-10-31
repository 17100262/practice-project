require 'test_helper'

class DegreeprogramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @degreeprogram = degreeprograms(:one)
  end

  test "should get index" do
    get degreeprograms_url
    assert_response :success
  end

  test "should get new" do
    get new_degreeprogram_url
    assert_response :success
  end

  test "should create degreeprogram" do
    assert_difference('Degreeprogram.count') do
      post degreeprograms_url, params: { degreeprogram: { name: @degreeprogram.name, type: @degreeprogram.type } }
    end

    assert_redirected_to degreeprogram_url(Degreeprogram.last)
  end

  test "should show degreeprogram" do
    get degreeprogram_url(@degreeprogram)
    assert_response :success
  end

  test "should get edit" do
    get edit_degreeprogram_url(@degreeprogram)
    assert_response :success
  end

  test "should update degreeprogram" do
    patch degreeprogram_url(@degreeprogram), params: { degreeprogram: { name: @degreeprogram.name, type: @degreeprogram.type } }
    assert_redirected_to degreeprogram_url(@degreeprogram)
  end

  test "should destroy degreeprogram" do
    assert_difference('Degreeprogram.count', -1) do
      delete degreeprogram_url(@degreeprogram)
    end

    assert_redirected_to degreeprograms_url
  end
end
