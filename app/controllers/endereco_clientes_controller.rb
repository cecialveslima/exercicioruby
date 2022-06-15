class EnderecoClientesController < ApplicationController
  before_action :set_endereco_cliente, only: %i[ show edit update destroy ]

  # GET /endereco_clientes or /endereco_clientes.json
  def index
    @endereco_clientes = EnderecoCliente.all
  end

  # GET /endereco_clientes/1 or /endereco_clientes/1.json
  def show
  end

  # GET /endereco_clientes/new
  def new
    @endereco_cliente = EnderecoCliente.new
  end

  # GET /endereco_clientes/1/edit
  def edit
  end

  # POST /endereco_clientes or /endereco_clientes.json
  def create
    @endereco_cliente = EnderecoCliente.new(endereco_cliente_params)

    respond_to do |format|
      if @endereco_cliente.save
        format.html { redirect_to endereco_cliente_url(@endereco_cliente), notice: "Endereco cliente was successfully created." }
        format.json { render :show, status: :created, location: @endereco_cliente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @endereco_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /endereco_clientes/1 or /endereco_clientes/1.json
  def update
    respond_to do |format|
      if @endereco_cliente.update(endereco_cliente_params)
        format.html { redirect_to endereco_cliente_url(@endereco_cliente), notice: "Endereco cliente was successfully updated." }
        format.json { render :show, status: :ok, location: @endereco_cliente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @endereco_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /endereco_clientes/1 or /endereco_clientes/1.json
  def destroy
    @endereco_cliente.destroy

    respond_to do |format|
      format.html { redirect_to endereco_clientes_url, notice: "Endereco cliente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endereco_cliente
      @endereco_cliente = EnderecoCliente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def endereco_cliente_params
      params.require(:endereco_cliente).permit(:idEndCli, :idCli, :logradouro, :numero, :bairro, :cidade, :estado, :cep, :endCorrespondencia)
    end
end
