class RouteStatusesController < ApplicationController
  before_action :set_route_status, only: [:show, :edit, :update, :destroy]

  def index
    @route_statuses = RouteStatus.all
  end

  def show; end

  def new
    @route_status = RouteStatus.new
  end

  def edit; end

  def create
    @route_status = RouteStatus.new(route_status_params)

    respond_to do |format|
      if @route_status.save
        format.html { redirect_to @route_status, notice: 'Route status was successfully created.' }
        format.json { render :show, status: :created, location: @route_status }
      else
        format.html { render :new }
        format.json { render json: @route_status.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @route_status.update(route_status_params)
        format.html { redirect_to @route_status, notice: 'Route status was successfully updated.' }
        format.json { render :show, status: :ok, location: @route_status }
      else
        format.html { render :edit }
        format.json { render json: @route_status.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @route_status.destroy
    respond_to do |format|
      format.html { redirect_to route_statuses_url, notice: 'Route status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_route_status
    @route_status = RouteStatus.find(params[:id])
  end

  def route_status_params
    params.require(:route_status).permit(:title)
  end
end
