class ObjectCategoriesController < ApplicationController
  before_action :set_object_category, only: [:show, :edit, :update, :destroy]

  def index
    @object_categories = ObjectCategory.all
  end

  def show; end

  def new
    @object_category = ObjectCategory.new
  end

  def edit; end

  def create
    @object_category = ObjectCategory.new(object_category_params)

    respond_to do |format|
      if @object_category.save
        format.html { redirect_to @object_category, notice: 'Object category was successfully created.' }
        format.json { render :show, status: :created, location: @object_category }
      else
        format.html { render :new }
        format.json { render json: @object_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @object_category.update(object_category_params)
        format.html { redirect_to @object_category, notice: 'Object category was successfully updated.' }
        format.json { render :show, status: :ok, location: @object_category }
      else
        format.html { render :edit }
        format.json { render json: @object_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @object_category.destroy
    respond_to do |format|
      format.html { redirect_to object_categories_url, notice: 'Object category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_object_category
      @object_category = ObjectCategory.find(params[:id])
    end

    def object_category_params
      params.require(:object_category).permit(:title)
    end
end
