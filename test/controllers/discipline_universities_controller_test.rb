require 'test_helper'

class DisciplineUniversitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discipline_university = discipline_universities(:one)
  end

  test "should get index" do
    get discipline_universities_url
    assert_response :success
  end

  test "should get new" do
    get new_discipline_university_url
    assert_response :success
  end

  test "should create discipline_university" do
    assert_difference('DisciplineUniversity.count') do
      post discipline_universities_url, params: { discipline_university: { discipline_id: @discipline_university.discipline_id, university_id: @discipline_university.university_id } }
    end

    assert_redirected_to discipline_university_url(DisciplineUniversity.last)
  end

  test "should show discipline_university" do
    get discipline_university_url(@discipline_university)
    assert_response :success
  end

  test "should get edit" do
    get edit_discipline_university_url(@discipline_university)
    assert_response :success
  end

  test "should update discipline_university" do
    patch discipline_university_url(@discipline_university), params: { discipline_university: { discipline_id: @discipline_university.discipline_id, university_id: @discipline_university.university_id } }
    assert_redirected_to discipline_university_url(@discipline_university)
  end

  test "should destroy discipline_university" do
    assert_difference('DisciplineUniversity.count', -1) do
      delete discipline_university_url(@discipline_university)
    end

    assert_redirected_to discipline_universities_url
  end
end
