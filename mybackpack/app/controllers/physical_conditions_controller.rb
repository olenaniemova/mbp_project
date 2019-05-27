# frozen_srting_literal: true

# class Physical Conditions Controller
class PhysicalConditionsController < ApplicationController
  before_action :set_physical_condition, only: [:show, :edit, :update, :destroy]

  def index
    @physical_conditions = PhysicalCondition.all
  end

  def show; end

  def new
    @physical_condition = PhysicalCondition.new
  end

  def edit; end

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

  def destroy
    @physical_condition.destroy
    respond_to do |format|
      format.html { redirect_to physical_conditions_url, notice: 'Physical condition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_physical_condition
    @physical_condition = PhysicalCondition.find(params[:id])
  end

  def physical_condition_params
    params.require(:physical_condition).permit(:title)
  end
end
