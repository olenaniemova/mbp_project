class PhysicalConditionsController < ApplicationController
  before_action :set_physical_condition, only: [:show, :edit, :update, :destroy]

  # GET /physical_conditions
  # GET /physical_conditions.json
  def index
    @physical_conditions = PhysicalCondition.all
  end

  # GET /physical_conditions/1
  # GET /physical_conditions/1.json
  def show
  end

  # GET /physical_conditions/new
  def new
    @physical_condition = PhysicalCondition.new
  end

  # GET /physical_conditions/1/edit
  def edit
  end

  # POST /physical_conditions
  # POST /physical_conditions.json
  def create
    @physical_condition = PhysicalCondition.new(physical_condition_params)

    respond_to do |format|
      if @physical_condition.save
        format.html { redirect_to @physical_condition, notice: 'Physical condition was successfully created.' }
        format.json { render :show, status: :created, location: @physical_condition }
      else
        format.html { render :new }
        format.json { render json: @physical_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /physical_conditions/1
  # PATCH/PUT /physical_conditions/1.json
  def update
    respond_to do |format|
      if @physical_condition.update(physical_condition_params)
        format.html { redirect_to @physical_condition, notice: 'Physical condition was successfully updated.' }
        format.json { render :show, status: :ok, location: @physical_condition }
      else
        format.html { render :edit }
        format.json { render json: @physical_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /physical_conditions/1
  # DELETE /physical_conditions/1.json
  def destroy
    @physical_condition.destroy
    respond_to do |format|
      format.html { redirect_to physical_conditions_url, notice: 'Physical condition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_physical_condition
      @physical_condition = PhysicalCondition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def physical_condition_params
      params.require(:physical_condition).permit(:title)
    end
end
