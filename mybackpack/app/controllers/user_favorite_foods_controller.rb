class UserFavoriteFoodsController < ApplicationController
  before_action :set_user_favorite_food, only: [:show, :edit, :update, :destroy]

  def index
    # @user_favorite_foods = UserFavoriteFood.user_foods(current_user.id)
    @user_favorite_foods = current_user.user_favorite_foods.all
  end

  def show; end

  def new
    @user_favorite_food = UserFavoriteFood.new
  end

  def edit; end

  def create
    @user_favorite_food = UserFavoriteFood.new(user_favorite_food_params)
    @user_favorite_food.user_id = current_user.id

    respond_to do |format|
      if @user_favorite_food.save
        format.html { redirect_to @user_favorite_food, notice: 'User favorite food was successfully created.' }
        format.json { render :show, status: :created, location: @user_favorite_food }
      else
        format.html { render :new }
        format.json { render json: @user_favorite_food.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @user_favorite_food.update(user_favorite_food_params)
        format.html { redirect_to @user_favorite_food, notice: 'User favorite food was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_favorite_food }
      else
        format.html { render :edit }
        format.json { render json: @user_favorite_food.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user_favorite_food.destroy
    respond_to do |format|
      format.html { redirect_to user_favorite_foods_url, notice: 'User favorite food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_user_favorite_food
    @user_favorite_food = UserFavoriteFood.find(params[:id])
  end

  def user_favorite_food_params
    params.require(:user_favorite_food).permit(:food_id, :meal_id)
  end
end
