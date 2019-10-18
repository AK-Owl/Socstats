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
end

def results
    @country1 = params[:country1] [:id]
    @country2 = params[:country2] [:id]
    @country3 = params[:country3] [:id]
    @country4 = params[:country4] [:id]
    @country5 = params[:country5] [:id]
    @all = params[:all]
    
    @dev = Development.all
    @hfi = Freedom.all
    @data = analysisdata

    end

end

