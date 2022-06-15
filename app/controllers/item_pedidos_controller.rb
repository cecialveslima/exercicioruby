class ItemPedidosController < ApplicationController
  before_action :set_item_pedido, only: %i[ show edit update destroy ]

  # GET /item_pedidos or /item_pedidos.json
  def index
    @item_pedidos = ItemPedido.all
  end

  # GET /item_pedidos/1 or /item_pedidos/1.json
  def show
  end

  # GET /item_pedidos/new
  def new
    @item_pedido = ItemPedido.new
  end

  # GET /item_pedidos/1/edit
  def edit
  end

  # POST /item_pedidos or /item_pedidos.json
  def create
    @item_pedido = ItemPedido.new(item_pedido_params)

    respond_to do |format|
      if @item_pedido.save
        format.html { redirect_to item_pedido_url(@item_pedido), notice: "Item pedido was successfully created." }
        format.json { render :show, status: :created, location: @item_pedido }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_pedidos/1 or /item_pedidos/1.json
  def update
    respond_to do |format|
      if @item_pedido.update(item_pedido_params)
        format.html { redirect_to item_pedido_url(@item_pedido), notice: "Item pedido was successfully updated." }
        format.json { render :show, status: :ok, location: @item_pedido }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_pedidos/1 or /item_pedidos/1.json
  def destroy
    @item_pedido.destroy

    respond_to do |format|
      format.html { redirect_to item_pedidos_url, notice: "Item pedido was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_pedido
      @item_pedido = ItemPedido.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_pedido_params
      params.require(:item_pedido).permit(:idPedido, :idProd, :qtdItem)
    end
end
