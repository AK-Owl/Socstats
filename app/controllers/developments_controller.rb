class DevelopmentsController < ApplicationController
  before_action :set_development, only: [:show, :edit, :update, :destroy]

  # GET /developments
  # GET /developments.json
  def index
    @developments = Development.all
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
    # Exception Handlling
    rescue ActiveRecord::RecordNotFound => error
    render json: {
      error: error.to_s
    }, status: :not_found

  end
  


  # GET /developments/1
  # GET /developments/1.json
  def show
    @development = Development.find(params[:id])
  end

  # GET /developments/new
  def new
    @development = Development.new
  end

  # GET /developments/1/edit
  def edit
  end

  # POST /developments
  # POST /developments.json
  def create
    @development = Development.new(development_params)

    respond_to do |format|
      if @development.save
        format.html { redirect_to @development, notice: 'Development was successfully created.' }
        format.json { render :show, status: :created, location: @development }
      else
        format.html { render :new }
        format.json { render json: @development.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /developments/1
  # PATCH/PUT /developments/1.json
  def update
    respond_to do |format|
      if @development.update(development_params)
        format.html { redirect_to @development, notice: 'Development was successfully updated.' }
        format.json { render :show, status: :ok, location: @development }
      else
        format.html { render :edit }
        format.json { render json: @development.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /developments/1
  # DELETE /developments/1.json
  def destroy
    @development.destroy
    respond_to do |format|
      format.html { redirect_to developments_url, notice: 'Development was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_development
      @development = Development.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def development_params
      params.require(:development).permit(:hdi_rank, :country, :human_development_index, :life_expectancy_at_birth, :expected_education_years, :mean_education, :gni_capita, :gni_capita_minus_hdi_rank, :gii_rank, :giiindex, :freedom_id)
    end
end
