class RouteItemsController < ApplicationController
  before_action :set_route_item, only: [:show, :edit, :update, :destroy]

  def index
    @route_items = RouteItem.all
  end

  def show; end

  def new
    @route_item = RouteItem.new
  end

  def edit; end

  def create
    @route_item = RouteItem.new(route_item_params)
    @route_item.user_id = current_user.id

    respond_to do |format|
      if @route_item.save
        format.html { redirect_to @route_item, notice: 'Route item was successfully created.' }
        format.json { render :show, status: :created, location: @route_item }
      else
        format.html { render :new }
        format.json { render json: @route_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @route_item.update(route_item_params)
        format.html { redirect_to @route_item, notice: 'Route item was successfully updated.' }
        format.json { render :show, status: :ok, location: @route_item }
      else
        format.html { render :edit }
        format.json { render json: @route_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @route_item.destroy
    respond_to do |format|
      format.html { redirect_to route_items_url, notice: 'Route item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_route_item
    @route_item = RouteItem.find(params[:id])
  end

  def route_item_params
    params.require(:route_item).permit(:count, :item_id, :route_id)
  end
end
