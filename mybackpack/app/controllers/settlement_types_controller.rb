class SettlementTypesController < ApplicationController
  before_action :set_settlement_type, only: [:show, :edit, :update, :destroy]

  # GET /settlement_types
  # GET /settlement_types.json
  def index
    @settlement_types = SettlementType.all
  end

  # GET /settlement_types/1
  # GET /settlement_types/1.json
  def show
  end

  # GET /settlement_types/new
  def new
    @settlement_type = SettlementType.new
  end

  # GET /settlement_types/1/edit
  def edit
  end

  # POST /settlement_types
  # POST /settlement_types.json
  def create
    @settlement_type = SettlementType.new(settlement_type_params)

    respond_to do |format|
      if @settlement_type.save
        format.html { redirect_to @settlement_type, notice: 'Settlement type was successfully created.' }
        format.json { render :show, status: :created, location: @settlement_type }
      else
        format.html { render :new }
        format.json { render json: @settlement_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /settlement_types/1
  # PATCH/PUT /settlement_types/1.json
  def update
    respond_to do |format|
      if @settlement_type.update(settlement_type_params)
        format.html { redirect_to @settlement_type, notice: 'Settlement type was successfully updated.' }
        format.json { render :show, status: :ok, location: @settlement_type }
      else
        format.html { render :edit }
        format.json { render json: @settlement_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /settlement_types/1
  # DELETE /settlement_types/1.json
  def destroy
    @settlement_type.destroy
    respond_to do |format|
      format.html { redirect_to settlement_types_url, notice: 'Settlement type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_settlement_type
      @settlement_type = SettlementType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def settlement_type_params
      params.require(:settlement_type).permit(:title)
    end
end
