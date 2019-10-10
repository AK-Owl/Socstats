require "application_system_test_case"

class FreedomsTest < ApplicationSystemTestCase
  setup do
    @freedom = freedoms(:one)
  end

  test "visiting the index" do
    visit freedoms_url
    assert_selector "h1", text: "Freedoms"
  end

  test "creating a Freedom" do
    visit freedoms_url
    click_on "New Freedom"

    fill_in "Iso code", with: @freedom.ISO_code
    fill_in "Country", with: @freedom.country
    fill_in "Ef government", with: @freedom.ef_government
    fill_in "Ef legal", with: @freedom.ef_legal
    fill_in "Ef money", with: @freedom.ef_money
    fill_in "Ef rank", with: @freedom.ef_rank
    fill_in "Ef regulation", with: @freedom.ef_regulation
    fill_in "Ef score", with: @freedom.ef_score
    fill_in "Ef trade", with: @freedom.ef_trade
    fill_in "Hf quartile", with: @freedom.hf_quartile
    fill_in "Hf rank", with: @freedom.hf_rank
    fill_in "Hf score", with: @freedom.hf_score
    fill_in "Pf association", with: @freedom.pf_association
    fill_in "Pf expression", with: @freedom.pf_expression
    fill_in "Pf identity", with: @freedom.pf_identity
    fill_in "Pf movement", with: @freedom.pf_movement
    fill_in "Pf rank", with: @freedom.pf_rank
    fill_in "Pf religion", with: @freedom.pf_religion
    fill_in "Pf rol", with: @freedom.pf_rol
    fill_in "Pf score", with: @freedom.pf_score
    fill_in "Pf ss", with: @freedom.pf_ss
    fill_in "Region", with: @freedom.region
    fill_in "Year", with: @freedom.year
    click_on "Create Freedom"

    assert_text "Freedom was successfully created"
    click_on "Back"
  end

  test "updating a Freedom" do
    visit freedoms_url
    click_on "Edit", match: :first

    fill_in "Iso code", with: @freedom.ISO_code
    fill_in "Country", with: @freedom.country
    fill_in "Ef government", with: @freedom.ef_government
    fill_in "Ef legal", with: @freedom.ef_legal
    fill_in "Ef money", with: @freedom.ef_money
    fill_in "Ef rank", with: @freedom.ef_rank
    fill_in "Ef regulation", with: @freedom.ef_regulation
    fill_in "Ef score", with: @freedom.ef_score
    fill_in "Ef trade", with: @freedom.ef_trade
    fill_in "Hf quartile", with: @freedom.hf_quartile
    fill_in "Hf rank", with: @freedom.hf_rank
    fill_in "Hf score", with: @freedom.hf_score
    fill_in "Pf association", with: @freedom.pf_association
    fill_in "Pf expression", with: @freedom.pf_expression
    fill_in "Pf identity", with: @freedom.pf_identity
    fill_in "Pf movement", with: @freedom.pf_movement
    fill_in "Pf rank", with: @freedom.pf_rank
    fill_in "Pf religion", with: @freedom.pf_religion
    fill_in "Pf rol", with: @freedom.pf_rol
    fill_in "Pf score", with: @freedom.pf_score
    fill_in "Pf ss", with: @freedom.pf_ss
    fill_in "Region", with: @freedom.region
    fill_in "Year", with: @freedom.year
    click_on "Update Freedom"

    assert_text "Freedom was successfully updated"
    click_on "Back"
  end

  test "destroying a Freedom" do
    visit freedoms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Freedom was successfully destroyed"
  end
end
