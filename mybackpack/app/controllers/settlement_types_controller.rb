class SettlementTypesController < ApplicationController
  before_action :set_settlement_type, only: [:show, :edit, :update, :destroy]

  def index
    @settlement_types = SettlementType.all
  end

  def show; end

  def new
    @settlement_type = SettlementType.new
  end

  def edit; end

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

  def destroy
    @settlement_type.destroy
    respond_to do |format|
      format.html { redirect_to settlement_types_url, notice: 'Settlement type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_settlement_type
      @settlement_type = SettlementType.find(params[:id])
    end

    def settlement_type_params
      params.require(:settlement_type).permit(:title, :abbreviation)
    end
end
