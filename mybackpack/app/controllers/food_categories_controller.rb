class FoodCategoriesController < ApplicationController
  before_action :set_food_category, only: [:show, :edit, :update, :destroy]

  def index
    @food_categories = FoodCategory.all
  end

  def show; end

  def new
    @food_category = FoodCategory.new
  end

  def edit; end

  def create
    @food_category = FoodCategory.new(food_category_params)

    respond_to do |format|
      if @food_category.save
        format.html { redirect_to @food_category, notice: 'Food category was successfully created.' }
        format.json { render :show, status: :created, location: @food_category }
      else
        format.html { render :new }
        format.json { render json: @food_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @food_category.update(food_category_params)
        format.html { redirect_to @food_category, notice: 'Food category was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_category }
      else
        format.html { render :edit }
        format.json { render json: @food_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @food_category.destroy
    respond_to do |format|
      format.html { redirect_to food_categories_url, notice: 'Food category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_food_category
      @food_category = FoodCategory.find(params[:id])
    end

    def food_category_params
      params.require(:food_category).permit(:title)
    end
end
