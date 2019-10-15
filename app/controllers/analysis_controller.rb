class AnalysisController < ApplicationController
    def index
        @developments = Development.all
        @developmentbyregions = Developmentbyregion.all;
        @freedom =Freedom.all
    end

    def show
        @development = Development.all
        @freedom =Freedom.all
    end

    def dataanalysis
        @dev_countries=[]
        @development = Development.all
        @development.each do |dev|
            @dev_countries << dev.country
        end
        @freedom = Freedom.all
        #params.require(:development).permit(:hdi_rank, :country, :human_development_index, :life_expectancy_at_birth, :expected_education_years, :mean_education, :gni_capita, :gni_capita_minus_hdi_rank, :gii_rank, :giiindex, :freedom_id)
       
    end

end
