class ComplexitiesController < ApplicationController
  before_action :set_complexity, only: [:show, :edit, :update, :destroy]

  def index
    @complexities = Complexity.all
  end

  def show; end

  def new
    @complexity = Complexity.new
  end

  def edit; end

  def create
    @complexity = Complexity.new(complexity_params)

    respond_to do |format|
      if @complexity.save
        format.html { redirect_to @complexity, notice: 'Complexity was successfully created.' }
        format.json { render :show, status: :created, location: @complexity }
      else
        format.html { render :new }
        format.json { render json: @complexity.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @complexity.update(complexity_params)
        format.html { redirect_to @complexity, notice: 'Complexity was successfully updated.' }
        format.json { render :show, status: :ok, location: @complexity }
      else
        format.html { render :edit }
        format.json { render json: @complexity.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @complexity.destroy
    respond_to do |format|
      format.html { redirect_to complexities_url, notice: 'Complexity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_complexity
      @complexity = Complexity.find(params[:id])
    end

    def complexity_params
      params.require(:complexity).permit(:title, :description, :value)
    end
end
