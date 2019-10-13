class DevelopmentbyregionsController < ApplicationController
  before_action :set_developmentbyregion, only: [:show, :edit, :update, :destroy]

  # GET /developmentbyregions
  # GET /developmentbyregions.json
  def index
    @developmentbyregions = Developmentbyregion.all
    @devregion_hdi = []
    @devregion_lf = []
    @devregion_edu = []
    @devregion_gni = []
    @devregion_meanedu = []
    @devregion_gnindex = []
    @developmentbyregions.each do |index|
      @devregion_hdi << index.human_development_index
      @devregion_lf << index.life_expectancy_at_birth
      @devregion_edu << index.expected_education_years
      @devregion_meanedu << index.mean_education
      @devregion_gni  << index.gni_capita
      @devregion_gnindex << index.giiindex
    end
  end
  
  

  # GET /developmentbyregions/1
  # GET /developmentbyregions/1.json
  def show
  end

  # GET /developmentbyregions/new
  def new
    @developmentbyregion = Developmentbyregion.new
  end

  # GET /developmentbyregions/1/edit
  def edit
  end

  # POST /developmentbyregions
  # POST /developmentbyregions.json
  def create
    @developmentbyregion = Developmentbyregion.new(developmentbyregion_params)

    respond_to do |format|
      if @developmentbyregion.save
        format.html { redirect_to @developmentbyregion, notice: 'Developmentbyregion was successfully created.' }
        format.json { render :show, status: :created, location: @developmentbyregion }
      else
        format.html { render :new }
        format.json { render json: @developmentbyregion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /developmentbyregions/1
  # PATCH/PUT /developmentbyregions/1.json
  def update
    respond_to do |format|
      if @developmentbyregion.update(developmentbyregion_params)
        format.html { redirect_to @developmentbyregion, notice: 'Developmentbyregion was successfully updated.' }
        format.json { render :show, status: :ok, location: @developmentbyregion }
      else
        format.html { render :edit }
        format.json { render json: @developmentbyregion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /developmentbyregions/1
  # DELETE /developmentbyregions/1.json
  def destroy
    @developmentbyregion.destroy
    respond_to do |format|
      format.html { redirect_to developmentbyregions_url, notice: 'Developmentbyregion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_developmentbyregion
      @developmentbyregion = Developmentbyregion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def developmentbyregion_params
      params.require(:developmentbyregion).permit(:hdindex, :region, :human_development_index, :life_expectancy_at_birth, :expected_education_years, :mean_education, :gni_capita, :giiindex)
    end
end
