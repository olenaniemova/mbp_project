class ChainsController < ApplicationController
  before_action :set_chain, only: [:show, :edit, :update, :destroy]

  def index
    @chains = Chain.all
  end

  def show; end

  def new
    @chain = Chain.new
  end

  def edit; end

  def create
    @chain = Chain.new(chain_params)

    respond_to do |format|
      if @chain.save
        format.html { redirect_to @chain, notice: 'Chain was successfully created.' }
        format.json { render :show, status: :created, location: @chain }
      else
        format.html { render :new }
        format.json { render json: @chain.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @chain.update(chain_params)
        format.html { redirect_to @chain, notice: 'Chain was successfully updated.' }
        format.json { render :show, status: :ok, location: @chain }
      else
        format.html { render :edit }
        format.json { render json: @chain.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @chain.destroy
    respond_to do |format|
      format.html { redirect_to chains_url, notice: 'Chain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_chain
      @chain = Chain.find(params[:id])
    end

    def chain_params
      params.require(:chain).permit(:title, :description, :complexity_id)
    end
end
