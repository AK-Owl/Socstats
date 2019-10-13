class AnalysisController < ApplicationController
    def index
        @developments = Development.all
        @developmentbyregions = Developmentbyregion.all;
    end

end
