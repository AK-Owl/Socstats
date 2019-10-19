module AnalysisHelper

        def analysisdata
            analysisdata = ("SELECT developments.hdi_rank,
            developments.country,
            developments.human_development_index,
            developments.life_expectancy_at_birth,
            developments.expected_education_years,
            developments.mean_education,
            developments.gni_capita,
            developments.gni_capita_minus_hdi_rank,
            developments.gii_rank,
            developments.giiindex,
            freedoms.ISO_code,
            freedoms.region,
            freedoms.pf_rol,
            freedoms.pf_ss,
            freedoms.pf_movement,
            freedoms.pf_religion,
            freedoms.pf_association,
            freedoms.pf_expression,
            freedoms.pf_identity,
            freedoms.ef_government,
            freedoms.ef_legal,
            freedoms.ef_money,
            freedoms.ef_trade,
            freedoms.ef_regulation,
            freedoms.pf_score,
            freedoms.pf_rank,
            freedoms.ef_score,
            freedoms.ef_rank,
            freedoms.hf_score,
            freedoms.hf_rank,
            freedoms.hf_quartile 
            FROM developments, freedoms 
            WHERE developments.country = freedoms.country 
            AND 
            developments.country IN (country1, country2, country3, country4, country5)")
            return analysisdata
        end


   
end
