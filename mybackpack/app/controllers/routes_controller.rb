class RoutesController < ApplicationController
  before_action :set_route, only: [:show, :edit, :update, :destroy]

  def index
    @routes = Route.all
  end

  def show
    @user_items = RouteItem.items(@route.id, current_user.id)
    @categories = UserAvailableItem.item_categories(@user_items)
  end

  def new
    @route = Route.new
  end

  def edit; end

  def create
    @route = Route.new(route_params)
    @route.user_id = current_user.id

    respond_to do |format|
      if @route.save
        # format.html { redirect_to @route, notice: 'Route was successfully created.' }
        # format.html { redirect_to new_route_item_path }
        format.html { redirect_to :controller => 'route_items', :action => 'new', route: @route.id, rp: route_part }
        format.json { render :show, status: :created, location: @route }
      else
        format.html { render :new }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @route.update(route_params)
        format.html { redirect_to @route, notice: 'Route was successfully updated.' }
        format.json { render :show, status: :ok, location: @route }
      else
        format.html { render :edit }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @route.destroy
    respond_to do |format|
      format.html { redirect_to routes_url, notice: 'Route was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def user_routes
    @routes = current_user.routes.all
  end

  private

    def set_route
      @route = Route.find(params[:id])
    end

    def route_params
      params.require(:route).permit(:title, :description, :start_date, :end_date, :duration, :chain_id, :complexity_id, :publication, :settlement_dep, :settlement_arr,
        :route_status_id)
    end

    def route_part
      params.require(:route).permit(participants: [])
    end
end
