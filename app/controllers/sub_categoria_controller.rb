class SubCategoriaController < ApplicationController
  before_action :set_sub_categorium, only: %i[ show edit update destroy ]

  # GET /sub_categoria or /sub_categoria.json
  def index
    @sub_categoria = SubCategorium.all
  end

  # GET /sub_categoria/1 or /sub_categoria/1.json
  def show
  end

  # GET /sub_categoria/new
  def new
    @sub_categorium = SubCategorium.new
  end

  # GET /sub_categoria/1/edit
  def edit
  end

  # POST /sub_categoria or /sub_categoria.json
  def create
    @sub_categorium = SubCategorium.new(sub_categorium_params)

    respond_to do |format|
      if @sub_categorium.save
        format.html { redirect_to sub_categorium_url(@sub_categorium), notice: "Sub categorium was successfully created." }
        format.json { render :show, status: :created, location: @sub_categorium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sub_categorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_categoria/1 or /sub_categoria/1.json
  def update
    respond_to do |format|
      if @sub_categorium.update(sub_categorium_params)
        format.html { redirect_to sub_categorium_url(@sub_categorium), notice: "Sub categorium was successfully updated." }
        format.json { render :show, status: :ok, location: @sub_categorium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sub_categorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_categoria/1 or /sub_categoria/1.json
  def destroy
    @sub_categorium.destroy

    respond_to do |format|
      format.html { redirect_to sub_categoria_url, notice: "Sub categorium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_categorium
      @sub_categorium = SubCategorium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sub_categorium_params
      params.require(:sub_categorium).permit(:idSubCat, :dscSubCat, :idCat)
    end
end
