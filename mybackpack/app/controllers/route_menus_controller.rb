class RouteMenusController < ApplicationController
  before_action :set_route_menu, only: [:show, :edit, :update, :destroy]

  def index
    @route_menus = RouteMenu.all
  end

  def show; end

  def new
    @route_menu = RouteMenu.new
  end

  def edit; end

  def create
    @route_menu = RouteMenu.new(route_menu_params)
    @route_menu.user_id = current_user.id

    respond_to do |format|
      if @route_menu.save
        format.html { redirect_to @route_menu, notice: 'Route menu was successfully created.' }
        format.json { render :show, status: :created, location: @route_menu }
      else
        format.html { render :new }
        format.json { render json: @route_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @route_menu.update(route_menu_params)
        format.html { redirect_to @route_menu, notice: 'Route menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @route_menu }
      else
        format.html { render :edit }
        format.json { render json: @route_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @route_menu.destroy
    respond_to do |format|
      format.html { redirect_to route_menus_url, notice: 'Route menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_route_menu
    @route_menu = RouteMenu.find(params[:id])
  end

  def route_menu_params
    params.require(:route_menu).permit(:count, :route_id, :food_id, :meal_id)
  end
end
