class UserAvailableItemsController < ApplicationController
  before_action :set_user_available_item, only: [:show, :edit, :update, :destroy]

  def index
    @user_available_items = current_user.user_available_items.all
    @categories = UserAvailableItem.item_categories(@user_available_items)
  end

  def show; end

  def new
    @user_available_item = UserAvailableItem.new
  end

  def edit; end

  def create
    @user_available_item = UserAvailableItem.new(user_available_item_params)
    @user_available_item.user_id = current_user.id

    respond_to do |format|
      if @user_available_item.save
        format.html { redirect_to @user_available_item, notice: 'User available item was successfully created.' }
        format.json { render :show, status: :created, location: @user_available_item }
      else
        format.html { render :new }
        format.json { render json: @user_available_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @user_available_item.update(user_available_item_params)
        format.html { redirect_to @user_available_item, notice: 'User available item was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_available_item }
      else
        format.html { render :edit }
        format.json { render json: @user_available_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user_available_item.destroy
    respond_to do |format|
      format.html { redirect_to user_available_items_url, notice: 'User available item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_user_available_item
    @user_available_item = UserAvailableItem.find(params[:id])
  end

  def user_available_item_params
    params.require(:user_available_item).permit(:item_id, :count)
  end
end
