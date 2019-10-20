class FreedomsController < ApplicationController
  before_action :set_freedom, only: [:show, :edit, :update, :destroy]

  # GET /freedoms
  # GET /freedoms.json
  def index
    @freedoms = Freedom.all
    rescue ActiveRecord::RecordNotFound => error
    print error
  end

  # GET /freedoms/1
  # GET /freedoms/1.json
  def show
    @freedom = Freedom.find(params[:id])
    rescue ActiveRecord::RecordNotFound => error
    print error
    # reference from the rails guides "https://guides.rubyonrails.org/action_controller_overview.html"
    respond_to do |pdf_format|
      pdf_format.html
      pdf_format.pdf {render pdf: generate_pdf(@freedom)}
    end
  end

  # GET /freedoms/new
  def new
    @freedom = Freedom.new
  end

  # GET /freedoms/1/edit
  def edit
  end

  # POST /freedoms
  # POST /freedoms.json
  def create
    @freedom = Freedom.new(freedom_params)

    respond_to do |format|
      if @freedom.save
        format.html { redirect_to @freedom, notice: 'Freedom was successfully created.' }
        format.json { render :show, status: :created, location: @freedom }
      else
        format.html { render :new }
        format.json { render json: @freedom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /freedoms/1
  # PATCH/PUT /freedoms/1.json
  def update
    respond_to do |format|
      if @freedom.update(freedom_params)
        format.html { redirect_to @freedom, notice: 'Freedom was successfully updated.' }
        format.json { render :show, status: :ok, location: @freedom }
      else
        format.html { render :edit }
        format.json { render json: @freedom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /freedoms/1
  # DELETE /freedoms/1.json
  def destroy
    @freedom.destroy
    respond_to do |format|
      format.html { redirect_to freedoms_url, notice: 'Freedom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_freedom
      @freedom = Freedom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def freedom_params
      params.require(:freedom).permit(:country, :ISO_code, :region, :year, :pf_rol, :pf_ss, :pf_movement, :pf_religion, :pf_association, :pf_expression, :pf_identity, :ef_government, :ef_legal, :ef_money, :ef_trade, :ef_regulation, :pf_score, :pf_rank, :ef_score, :ef_rank, :hf_score, :hf_rank, :hf_quartile)
    end
end
