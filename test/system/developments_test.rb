require "application_system_test_case"

class DevelopmentsTest < ApplicationSystemTestCase
  setup do
    @development = developments(:one)
  end

  test "visiting the index" do
    visit developments_url
    assert_selector "h1", text: "Developments"
  end

  test "creating a Development" do
    visit developments_url
    click_on "New Development"

    fill_in "Country", with: @development.country
    fill_in "Expected education years", with: @development.expected_education_years
    fill_in "Freedom", with: @development.freedom_id
    fill_in "Gii rank", with: @development.gii_rank
    fill_in "Giiindex", with: @development.giiindex
    fill_in "Gni capita", with: @development.gni_capita
    fill_in "Gni capita minus hdi rank", with: @development.gni_capita_minus_hdi_rank
    fill_in "Hdi rank", with: @development.hdi_rank
    fill_in "Human development index", with: @development.human_development_index
    fill_in "Life expectancy at birth", with: @development.life_expectancy_at_birth
    fill_in "Mean education", with: @development.mean_education
    click_on "Create Development"

    assert_text "Development was successfully created"
    click_on "Back"
  end

  test "updating a Development" do
    visit developments_url
    click_on "Edit", match: :first

    fill_in "Country", with: @development.country
    fill_in "Expected education years", with: @development.expected_education_years
    fill_in "Freedom", with: @development.freedom_id
    fill_in "Gii rank", with: @development.gii_rank
    fill_in "Giiindex", with: @development.giiindex
    fill_in "Gni capita", with: @development.gni_capita
    fill_in "Gni capita minus hdi rank", with: @development.gni_capita_minus_hdi_rank
    fill_in "Hdi rank", with: @development.hdi_rank
    fill_in "Human development index", with: @development.human_development_index
    fill_in "Life expectancy at birth", with: @development.life_expectancy_at_birth
    fill_in "Mean education", with: @development.mean_education
    click_on "Update Development"

    assert_text "Development was successfully updated"
    click_on "Back"
  end

  test "destroying a Development" do
    visit developments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Development was successfully destroyed"
  end
end
