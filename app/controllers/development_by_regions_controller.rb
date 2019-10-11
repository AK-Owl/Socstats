class DevelopmentByRegionsController < ApplicationController
  before_action :set_development_by_region, only: [:show, :edit, :update, :destroy]

  # GET /development_by_regions
  # GET /development_by_regions.json
  def index
    @development_by_regions = DevelopmentByRegion.all
  end

  # GET /development_by_regions/1
  # GET /development_by_regions/1.json
  def show
  end

  # GET /development_by_regions/new
  def new
    @development_by_region = DevelopmentByRegion.new
  end

  # GET /development_by_regions/1/edit
  def edit
  end

  # POST /development_by_regions
  # POST /development_by_regions.json
  def create
    @development_by_region = DevelopmentByRegion.new(development_by_region_params)

    respond_to do |format|
      if @development_by_region.save
        format.html { redirect_to @development_by_region, notice: 'Development by region was successfully created.' }
        format.json { render :show, status: :created, location: @development_by_region }
      else
        format.html { render :new }
        format.json { render json: @development_by_region.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /development_by_regions/1
  # PATCH/PUT /development_by_regions/1.json
  def update
    respond_to do |format|
      if @development_by_region.update(development_by_region_params)
        format.html { redirect_to @development_by_region, notice: 'Development by region was successfully updated.' }
        format.json { render :show, status: :ok, location: @development_by_region }
      else
        format.html { render :edit }
        format.json { render json: @development_by_region.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /development_by_regions/1
  # DELETE /development_by_regions/1.json
  def destroy
    @development_by_region.destroy
    respond_to do |format|
      format.html { redirect_to development_by_regions_url, notice: 'Development by region was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_development_by_region
      @development_by_region = DevelopmentByRegion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def development_by_region_params
      params.require(:development_by_region).permit(:hdindex, :region, :human_development_index, :life_expectancy_at_birth, :expected_education_years, :mean_education, :gni_capita, :giiindex)
    end
end
