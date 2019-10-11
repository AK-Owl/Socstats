require 'test_helper'

class DevelopmentbyregionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @developmentbyregion = developmentbyregions(:one)
  end

  test "should get index" do
    get developmentbyregions_url
    assert_response :success
  end

  test "should get new" do
    get new_developmentbyregion_url
    assert_response :success
  end

  test "should create developmentbyregion" do
    assert_difference('Developmentbyregion.count') do
      post developmentbyregions_url, params: { developmentbyregion: { expected_education_years: @developmentbyregion.expected_education_years, giiindex: @developmentbyregion.giiindex, gni_capita: @developmentbyregion.gni_capita, hdindex: @developmentbyregion.hdindex, human_development_index: @developmentbyregion.human_development_index, life_expectancy_at_birth: @developmentbyregion.life_expectancy_at_birth, mean_education: @developmentbyregion.mean_education, region: @developmentbyregion.region } }
    end

    assert_redirected_to developmentbyregion_url(Developmentbyregion.last)
  end

  test "should show developmentbyregion" do
    get developmentbyregion_url(@developmentbyregion)
    assert_response :success
  end

  test "should get edit" do
    get edit_developmentbyregion_url(@developmentbyregion)
    assert_response :success
  end

  test "should update developmentbyregion" do
    patch developmentbyregion_url(@developmentbyregion), params: { developmentbyregion: { expected_education_years: @developmentbyregion.expected_education_years, giiindex: @developmentbyregion.giiindex, gni_capita: @developmentbyregion.gni_capita, hdindex: @developmentbyregion.hdindex, human_development_index: @developmentbyregion.human_development_index, life_expectancy_at_birth: @developmentbyregion.life_expectancy_at_birth, mean_education: @developmentbyregion.mean_education, region: @developmentbyregion.region } }
    assert_redirected_to developmentbyregion_url(@developmentbyregion)
  end

  test "should destroy developmentbyregion" do
    assert_difference('Developmentbyregion.count', -1) do
      delete developmentbyregion_url(@developmentbyregion)
    end

    assert_redirected_to developmentbyregions_url
  end
end
