class WeatherTypesController < ApplicationController
  before_action :set_weather_type, only: [:show, :edit, :update, :destroy]

  def index
    @weather_types = WeatherType.all
  end

  def show; end

  def new
    @weather_type = WeatherType.new
  end

  def edit; end

  def create
    @weather_type = WeatherType.new(weather_type_params)

    respond_to do |format|
      if @weather_type.save
        format.html { redirect_to @weather_type, notice: 'Weather type was successfully created.' }
        format.json { render :show, status: :created, location: @weather_type }
      else
        format.html { render :new }
        format.json { render json: @weather_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @weather_type.update(weather_type_params)
        format.html { redirect_to @weather_type, notice: 'Weather type was successfully updated.' }
        format.json { render :show, status: :ok, location: @weather_type }
      else
        format.html { render :edit }
        format.json { render json: @weather_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @weather_type.destroy
    respond_to do |format|
      format.html { redirect_to weather_types_url, notice: 'Weather type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_weather_type
      @weather_type = WeatherType.find(params[:id])
    end

    def weather_type_params
      params.require(:weather_type).permit(:title)
    end
end
