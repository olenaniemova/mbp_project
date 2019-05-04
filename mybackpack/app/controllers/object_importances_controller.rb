class ObjectImportancesController < ApplicationController
  before_action :set_object_importance, only: [:show, :edit, :update, :destroy]

  def index
    @object_importances = ObjectImportance.all
  end

  def show; end

  def new
    @object_importance = ObjectImportance.new
  end

  def edit; end

  def create
    @object_importance = ObjectImportance.new(object_importance_params)

    respond_to do |format|
      if @object_importance.save
        format.html { redirect_to @object_importance, notice: 'Object importance was successfully created.' }
        format.json { render :show, status: :created, location: @object_importance }
      else
        format.html { render :new }
        format.json { render json: @object_importance.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @object_importance.update(object_importance_params)
        format.html { redirect_to @object_importance, notice: 'Object importance was successfully updated.' }
        format.json { render :show, status: :ok, location: @object_importance }
      else
        format.html { render :edit }
        format.json { render json: @object_importance.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @object_importance.destroy
    respond_to do |format|
      format.html { redirect_to object_importances_url, notice: 'Object importance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_object_importance
      @object_importance = ObjectImportance.find(params[:id])
    end

    def object_importance_params
      params.require(:object_importance).permit(:title, :value)
    end
end
