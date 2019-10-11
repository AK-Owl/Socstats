require 'test_helper'

class DevelopmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @development = developments(:one)
  end

  test "should get index" do
    get developments_url
    assert_response :success
  end

  test "should get new" do
    get new_development_url
    assert_response :success
  end

  test "should create development" do
    assert_difference('Development.count') do
      post developments_url, params: { development: { country: @development.country, expected_education_years: @development.expected_education_years, freedom_id: @development.freedom_id, gii_rank: @development.gii_rank, giiindex: @development.giiindex, gni_capita: @development.gni_capita, gni_capita_minus_hdi_rank: @development.gni_capita_minus_hdi_rank, hdi_rank: @development.hdi_rank, human_development_index: @development.human_development_index, life_expectancy_at_birth: @development.life_expectancy_at_birth, mean_education: @development.mean_education } }
    end

    assert_redirected_to development_url(Development.last)
  end

  test "should show development" do
    get development_url(@development)
    assert_response :success
  end

  test "should get edit" do
    get edit_development_url(@development)
    assert_response :success
  end

  test "should update development" do
    patch development_url(@development), params: { development: { country: @development.country, expected_education_years: @development.expected_education_years, freedom_id: @development.freedom_id, gii_rank: @development.gii_rank, giiindex: @development.giiindex, gni_capita: @development.gni_capita, gni_capita_minus_hdi_rank: @development.gni_capita_minus_hdi_rank, hdi_rank: @development.hdi_rank, human_development_index: @development.human_development_index, life_expectancy_at_birth: @development.life_expectancy_at_birth, mean_education: @development.mean_education } }
    assert_redirected_to development_url(@development)
  end

  test "should destroy development" do
    assert_difference('Development.count', -1) do
      delete development_url(@development)
    end

    assert_redirected_to developments_url
  end
end
