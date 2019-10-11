require "application_system_test_case"

class DevelopmentbyregionsTest < ApplicationSystemTestCase
  setup do
    @developmentbyregion = developmentbyregions(:one)
  end

  test "visiting the index" do
    visit developmentbyregions_url
    assert_selector "h1", text: "Developmentbyregions"
  end

  test "creating a Developmentbyregion" do
    visit developmentbyregions_url
    click_on "New Developmentbyregion"

    fill_in "Expected education years", with: @developmentbyregion.expected_education_years
    fill_in "Giiindex", with: @developmentbyregion.giiindex
    fill_in "Gni capita", with: @developmentbyregion.gni_capita
    fill_in "Hdindex", with: @developmentbyregion.hdindex
    fill_in "Human development index", with: @developmentbyregion.human_development_index
    fill_in "Life expectancy at birth", with: @developmentbyregion.life_expectancy_at_birth
    fill_in "Mean education", with: @developmentbyregion.mean_education
    fill_in "Region", with: @developmentbyregion.region
    click_on "Create Developmentbyregion"

    assert_text "Developmentbyregion was successfully created"
    click_on "Back"
  end

  test "updating a Developmentbyregion" do
    visit developmentbyregions_url
    click_on "Edit", match: :first

    fill_in "Expected education years", with: @developmentbyregion.expected_education_years
    fill_in "Giiindex", with: @developmentbyregion.giiindex
    fill_in "Gni capita", with: @developmentbyregion.gni_capita
    fill_in "Hdindex", with: @developmentbyregion.hdindex
    fill_in "Human development index", with: @developmentbyregion.human_development_index
    fill_in "Life expectancy at birth", with: @developmentbyregion.life_expectancy_at_birth
    fill_in "Mean education", with: @developmentbyregion.mean_education
    fill_in "Region", with: @developmentbyregion.region
    click_on "Update Developmentbyregion"

    assert_text "Developmentbyregion was successfully updated"
    click_on "Back"
  end

  test "destroying a Developmentbyregion" do
    visit developmentbyregions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Developmentbyregion was successfully destroyed"
  end
end
