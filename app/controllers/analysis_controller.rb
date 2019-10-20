include AnalysisHelper

class AnalysisController < ApplicationController

def index
    @dev = Development.all
    @dev_country1 = []
    @dev_country2 = []
    @dev.each do |dev|
        @dev_country1 << dev.country
        @dev_country2 << dev.country
    end
    @hdi = params[:human_development_index]
    rescue ActiveRecord::RecordNotFound => error
    print error
end
 
def results
    # fetching the selected countries
    country1 = params[:country1]
    country2 = params[:country2]
    country3 = params[:country3]
    country4 = params[:country4] 
    country5 = params[:country5]

    @dev = Development.all
    @hfi = Freedom.all
    
    # Retrieving the records of the selected countries
    @search1 = Development.where('country = ?', country1)
    @search2 = Development.where('country = ?', country2)
    @search3 = Development.where('country = ?', country3)
    @search4 = Development.where('country = ?', country4)
    @search5 = Development.where('country = ?', country5)
    @countries = []
    @countries1 = []
    @hdindex = []
    @lf = []
    @edu = []
    @me = []
    @gni = []
    @gii = []
    @pfrol = []
    @pfss = []
    @pfmov = []
    @pfrel = []
    @pfass = []
    @pfexp = []
    @pdid = []
    @efgov = []
    @efleg = []
    @efmon = []
    @trade = []
    @efreg = []
    @pfscr = []
    @efscr = []
    @hdscr = []

   # adding same coulm names to array variables
    @search1.each do |s|
        @countries << s.country
        @countries1 << s.country
        @hdindex << s.human_development_index
        @lf << s.life_expectancy_at_birth
        @edu << s.expected_education_years
        @me << s.mean_education
        @gni << s.gni_capita
        @gii << s.giiindex
        @pfrol << s.freedom.pf_rol
        @pfss << s.freedom.pf_ss
        @pfmov << s.freedom.pf_movement
        @pfrel << s.freedom.pf_religion
        @pfass << s.freedom.pf_association
        @pfexp << s.freedom.pf_expression
        @pdid << s.freedom.pf_identity
        @efgov << s.freedom.ef_government
        @efleg << s.freedom.ef_legal
        @efmon << s.freedom.ef_money
        @trade << s.freedom.ef_trade
        @efreg << s.freedom.ef_regulation
        @pfscr << s.freedom.pf_score
        @efscr << s.freedom.ef_score
        @hdscr << s.freedom.hf_score
    end

    @search2.each do |s|
        @countries << s.country
        @countries1 << s.country
        @hdindex << s.human_development_index
        @lf << s.life_expectancy_at_birth
        @edu << s.expected_education_years
        @me << s.mean_education
        @gni << s.gni_capita
        @gii << s.giiindex
        @pfrol << s.freedom.pf_rol
        @pfss << s.freedom.pf_ss
        @pfmov << s.freedom.pf_movement
        @pfrel << s.freedom.pf_religion
        @pfass << s.freedom.pf_association
        @pfexp << s.freedom.pf_expression
        @pdid << s.freedom.pf_identity
        @efgov << s.freedom.ef_government
        @efleg << s.freedom.ef_legal
        @efmon << s.freedom.ef_money
        @trade << s.freedom.ef_trade
        @efreg << s.freedom.ef_regulation
        @pfscr << s.freedom.pf_score
        @efscr << s.freedom.ef_score
        @hdscr << s.freedom.hf_score
    end

    @search3.each do |s|
        @countries << s.country
        @countries1 << s.country
        @hdindex << s.human_development_index
        @lf << s.life_expectancy_at_birth
        @edu << s.expected_education_years
        @me << s.mean_education
        @gni << s.gni_capita
        @gii << s.giiindex
        @pfrol << s.freedom.pf_rol
        @pfss << s.freedom.pf_ss
        @pfmov << s.freedom.pf_movement
        @pfrel << s.freedom.pf_religion
        @pfass << s.freedom.pf_association
        @pfexp << s.freedom.pf_expression
        @pdid << s.freedom.pf_identity
        @efgov << s.freedom.ef_government
        @efleg << s.freedom.ef_legal
        @efmon << s.freedom.ef_money
        @trade << s.freedom.ef_trade
        @efreg << s.freedom.ef_regulation
        @pfscr << s.freedom.pf_score
        @efscr << s.freedom.ef_score
        @hdscr << s.freedom.hf_score
    end

    @search4.each do |s|
        @countries << s.country
        @countries1 << s.country
        @hdindex << s.human_development_index
        @lf << s.life_expectancy_at_birth
        @edu << s.expected_education_years
        @me << s.mean_education
        @gni << s.gni_capita
        @gii << s.giiindex
        @pfrol << s.freedom.pf_rol
        @pfss << s.freedom.pf_ss
        @pfmov << s.freedom.pf_movement
        @pfrel << s.freedom.pf_religion
        @pfass << s.freedom.pf_association
        @pfexp << s.freedom.pf_expression
        @pdid << s.freedom.pf_identity
        @efgov << s.freedom.ef_government
        @efleg << s.freedom.ef_legal
        @efmon << s.freedom.ef_money
        @trade << s.freedom.ef_trade
        @efreg << s.freedom.ef_regulation
        @pfscr << s.freedom.pf_score
        @efscr << s.freedom.ef_score
        @hdscr << s.freedom.hf_score
    end

    @search5.each do |s|
        @countries << s.country
        @countries1 << s.country
        @hdindex << s.human_development_index
        @lf << s.life_expectancy_at_birth
        @edu << s.expected_education_years
        @me << s.mean_education
        @gni << s.gni_capita
        @gii << s.giiindex
        @pfrol << s.freedom.pf_rol
        @pfss << s.freedom.pf_ss
        @pfmov << s.freedom.pf_movement
        @pfrel << s.freedom.pf_religion
        @pfass << s.freedom.pf_association
        @pfexp << s.freedom.pf_expression
        @pdid << s.freedom.pf_identity
        @efgov << s.freedom.ef_government
        @efleg << s.freedom.ef_legal
        @efmon << s.freedom.ef_money
        @trade << s.freedom.ef_trade
        @efreg << s.freedom.ef_regulation
        @pfscr << s.freedom.pf_score
        @efscr << s.freedom.ef_score
        @hdscr << s.freedom.hf_score
    end
    respond_to do |format|
        format.html
        format.pdf do
            render pdf: "analysis",
            page_size: 'A4',
            template: "analysis/results.html.erb",
            layout: "pdf.html",
            orientation: "Landscape",
            lowquality: true,
            zoom: 1,
            dpi: 75
        end
    end
      
    # -- analysis_Helper.rb to fetch the data from sqlite - Attempt was nearly successful before moved to activerecords
    #@data = analysisdata

    end
end