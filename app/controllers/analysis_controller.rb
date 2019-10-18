class AnalysisController < ApplicationController

def index
    @dev = Development.all
    @dev_country1 = []
    @dev_country2 = []
    @dev.each do |dev|
        @dev_country1 << dev.country
        @dev_country2 << dev.country
    end

end

def results
    @id1 = params[:country1] [:id]
    @id2 = params[:country2] [:id]
    #@country1 = Development.find(@development[])

end

end

