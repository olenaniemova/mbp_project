class CreateSettlementsController < ApplicationController
  before_action :set_create_settlement, only: [:show, :edit, :update, :destroy]

  # GET /create_settlements
  # GET /create_settlements.json
  def index
    @create_settlements = CreateSettlement.all
  end

  # GET /create_settlements/1
  # GET /create_settlements/1.json
  def show
  end

  # GET /create_settlements/new
  def new
    @create_settlement = CreateSettlement.new
  end

  # GET /create_settlements/1/edit
  def edit
  end

  # POST /create_settlements
  # POST /create_settlements.json
  def create
    @create_settlement = CreateSettlement.new(create_settlement_params)

    respond_to do |format|
      if @create_settlement.save
        format.html { redirect_to @create_settlement, notice: 'Create settlement was successfully created.' }
        format.json { render :show, status: :created, location: @create_settlement }
      else
        format.html { render :new }
        format.json { render json: @create_settlement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_settlements/1
  # PATCH/PUT /create_settlements/1.json
  def update
    respond_to do |format|
      if @create_settlement.update(create_settlement_params)
        format.html { redirect_to @create_settlement, notice: 'Create settlement was successfully updated.' }
        format.json { render :show, status: :ok, location: @create_settlement }
      else
        format.html { render :edit }
        format.json { render json: @create_settlement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_settlements/1
  # DELETE /create_settlements/1.json
  def destroy
    @create_settlement.destroy
    respond_to do |format|
      format.html { redirect_to create_settlements_url, notice: 'Create settlement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_settlement
      @create_settlement = CreateSettlement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def create_settlement_params
      params.require(:create_settlement).permit(:title)
    end
end
