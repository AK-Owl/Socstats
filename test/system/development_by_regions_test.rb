require "application_system_test_case"

class DevelopmentByRegionsTest < ApplicationSystemTestCase
  setup do
    @development_by_region = development_by_regions(:one)
  end

  test "visiting the index" do
    visit development_by_regions_url
    assert_selector "h1", text: "Development By Regions"
  end

  test "creating a Development by region" do
    visit development_by_regions_url
    click_on "New Development By Region"

    fill_in "Expected education years", with: @development_by_region.expected_education_years
    fill_in "Giiindex", with: @development_by_region.giiindex
    fill_in "Gni capita", with: @development_by_region.gni_capita
    fill_in "Hdindex", with: @development_by_region.hdindex
    fill_in "Human development index", with: @development_by_region.human_development_index
    fill_in "Life expectancy at birth", with: @development_by_region.life_expectancy_at_birth
    fill_in "Mean education", with: @development_by_region.mean_education
    fill_in "Region", with: @development_by_region.region
    click_on "Create Development by region"

    assert_text "Development by region was successfully created"
    click_on "Back"
  end

  test "updating a Development by region" do
    visit development_by_regions_url
    click_on "Edit", match: :first

    fill_in "Expected education years", with: @development_by_region.expected_education_years
    fill_in "Giiindex", with: @development_by_region.giiindex
    fill_in "Gni capita", with: @development_by_region.gni_capita
    fill_in "Hdindex", with: @development_by_region.hdindex
    fill_in "Human development index", with: @development_by_region.human_development_index
    fill_in "Life expectancy at birth", with: @development_by_region.life_expectancy_at_birth
    fill_in "Mean education", with: @development_by_region.mean_education
    fill_in "Region", with: @development_by_region.region
    click_on "Update Development by region"

    assert_text "Development by region was successfully updated"
    click_on "Back"
  end

  test "destroying a Development by region" do
    visit development_by_regions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Development by region was successfully destroyed"
  end
end
