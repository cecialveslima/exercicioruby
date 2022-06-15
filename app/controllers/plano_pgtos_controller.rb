class PlanoPgtosController < ApplicationController
  before_action :set_plano_pgto, only: %i[ show edit update destroy ]

  # GET /plano_pgtos or /plano_pgtos.json
  def index
    @plano_pgtos = PlanoPgto.all
  end

  # GET /plano_pgtos/1 or /plano_pgtos/1.json
  def show
  end

  # GET /plano_pgtos/new
  def new
    @plano_pgto = PlanoPgto.new
  end

  # GET /plano_pgtos/1/edit
  def edit
  end

  # POST /plano_pgtos or /plano_pgtos.json
  def create
    @plano_pgto = PlanoPgto.new(plano_pgto_params)

    respond_to do |format|
      if @plano_pgto.save
        format.html { redirect_to plano_pgto_url(@plano_pgto), notice: "Plano pgto was successfully created." }
        format.json { render :show, status: :created, location: @plano_pgto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plano_pgto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plano_pgtos/1 or /plano_pgtos/1.json
  def update
    respond_to do |format|
      if @plano_pgto.update(plano_pgto_params)
        format.html { redirect_to plano_pgto_url(@plano_pgto), notice: "Plano pgto was successfully updated." }
        format.json { render :show, status: :ok, location: @plano_pgto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @plano_pgto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plano_pgtos/1 or /plano_pgtos/1.json
  def destroy
    @plano_pgto.destroy

    respond_to do |format|
      format.html { redirect_to plano_pgtos_url, notice: "Plano pgto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plano_pgto
      @plano_pgto = PlanoPgto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plano_pgto_params
      params.require(:plano_pgto).permit(:idPlano, :dscPlanoPagto, :idPgto)
    end
end
