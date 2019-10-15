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
        @development = Development.all
        @freedom = Freedom.all
    end

end
