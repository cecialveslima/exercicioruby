class TipoPgtosController < ApplicationController
  before_action :set_tipo_pgto, only: %i[ show edit update destroy ]

  # GET /tipo_pgtos or /tipo_pgtos.json
  def index
    @tipo_pgtos = TipoPgto.all
  end

  # GET /tipo_pgtos/1 or /tipo_pgtos/1.json
  def show
  end

  # GET /tipo_pgtos/new
  def new
    @tipo_pgto = TipoPgto.new
  end

  # GET /tipo_pgtos/1/edit
  def edit
  end

  # POST /tipo_pgtos or /tipo_pgtos.json
  def create
    @tipo_pgto = TipoPgto.new(tipo_pgto_params)

    respond_to do |format|
      if @tipo_pgto.save
        format.html { redirect_to tipo_pgto_url(@tipo_pgto), notice: "Tipo pgto was successfully created." }
        format.json { render :show, status: :created, location: @tipo_pgto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tipo_pgto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_pgtos/1 or /tipo_pgtos/1.json
  def update
    respond_to do |format|
      if @tipo_pgto.update(tipo_pgto_params)
        format.html { redirect_to tipo_pgto_url(@tipo_pgto), notice: "Tipo pgto was successfully updated." }
        format.json { render :show, status: :ok, location: @tipo_pgto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tipo_pgto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_pgtos/1 or /tipo_pgtos/1.json
  def destroy
    @tipo_pgto.destroy

    respond_to do |format|
      format.html { redirect_to tipo_pgtos_url, notice: "Tipo pgto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_pgto
      @tipo_pgto = TipoPgto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_pgto_params
      params.require(:tipo_pgto).permit(:idPgto, :dscPgto)
    end
end
