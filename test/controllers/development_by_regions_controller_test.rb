require 'test_helper'

class DevelopmentByRegionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @development_by_region = development_by_regions(:one)
  end

  test "should get index" do
    get development_by_regions_url
    assert_response :success
  end

  test "should get new" do
    get new_development_by_region_url
    assert_response :success
  end

  test "should create development_by_region" do
    assert_difference('DevelopmentByRegion.count') do
      post development_by_regions_url, params: { development_by_region: { expected_education_years: @development_by_region.expected_education_years, giiindex: @development_by_region.giiindex, gni_capita: @development_by_region.gni_capita, hdindex: @development_by_region.hdindex, human_development_index: @development_by_region.human_development_index, life_expectancy_at_birth: @development_by_region.life_expectancy_at_birth, mean_education: @development_by_region.mean_education, region: @development_by_region.region } }
    end

    assert_redirected_to development_by_region_url(DevelopmentByRegion.last)
  end

  test "should show development_by_region" do
    get development_by_region_url(@development_by_region)
    assert_response :success
  end

  test "should get edit" do
    get edit_development_by_region_url(@development_by_region)
    assert_response :success
  end

  test "should update development_by_region" do
    patch development_by_region_url(@development_by_region), params: { development_by_region: { expected_education_years: @development_by_region.expected_education_years, giiindex: @development_by_region.giiindex, gni_capita: @development_by_region.gni_capita, hdindex: @development_by_region.hdindex, human_development_index: @development_by_region.human_development_index, life_expectancy_at_birth: @development_by_region.life_expectancy_at_birth, mean_education: @development_by_region.mean_education, region: @development_by_region.region } }
    assert_redirected_to development_by_region_url(@development_by_region)
  end

  test "should destroy development_by_region" do
    assert_difference('DevelopmentByRegion.count', -1) do
      delete development_by_region_url(@development_by_region)
    end

    assert_redirected_to development_by_regions_url
  end
end
