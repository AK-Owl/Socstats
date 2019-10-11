require 'test_helper'

class FreedomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @freedom = freedoms(:one)
  end

  test "should get index" do
    get freedoms_url
    assert_response :success
  end

  test "should get new" do
    get new_freedom_url
    assert_response :success
  end

  test "should create freedom" do
    assert_difference('Freedom.count') do
      post freedoms_url, params: { freedom: { ISO_code: @freedom.ISO_code, country: @freedom.country, ef_government: @freedom.ef_government, ef_legal: @freedom.ef_legal, ef_money: @freedom.ef_money, ef_rank: @freedom.ef_rank, ef_regulation: @freedom.ef_regulation, ef_score: @freedom.ef_score, ef_trade: @freedom.ef_trade, hf_quartile: @freedom.hf_quartile, hf_rank: @freedom.hf_rank, hf_score: @freedom.hf_score, pf_association: @freedom.pf_association, pf_expression: @freedom.pf_expression, pf_identity: @freedom.pf_identity, pf_movement: @freedom.pf_movement, pf_rank: @freedom.pf_rank, pf_religion: @freedom.pf_religion, pf_rol: @freedom.pf_rol, pf_score: @freedom.pf_score, pf_ss: @freedom.pf_ss, region: @freedom.region, year: @freedom.year } }
    end

    assert_redirected_to freedom_url(Freedom.last)
  end

  test "should show freedom" do
    get freedom_url(@freedom)
    assert_response :success
  end

  test "should get edit" do
    get edit_freedom_url(@freedom)
    assert_response :success
  end

  test "should update freedom" do
    patch freedom_url(@freedom), params: { freedom: { ISO_code: @freedom.ISO_code, country: @freedom.country, ef_government: @freedom.ef_government, ef_legal: @freedom.ef_legal, ef_money: @freedom.ef_money, ef_rank: @freedom.ef_rank, ef_regulation: @freedom.ef_regulation, ef_score: @freedom.ef_score, ef_trade: @freedom.ef_trade, hf_quartile: @freedom.hf_quartile, hf_rank: @freedom.hf_rank, hf_score: @freedom.hf_score, pf_association: @freedom.pf_association, pf_expression: @freedom.pf_expression, pf_identity: @freedom.pf_identity, pf_movement: @freedom.pf_movement, pf_rank: @freedom.pf_rank, pf_religion: @freedom.pf_religion, pf_rol: @freedom.pf_rol, pf_score: @freedom.pf_score, pf_ss: @freedom.pf_ss, region: @freedom.region, year: @freedom.year } }
    assert_redirected_to freedom_url(@freedom)
  end

  test "should destroy freedom" do
    assert_difference('Freedom.count', -1) do
      delete freedom_url(@freedom)
    end

    assert_redirected_to freedoms_url
  end
end
