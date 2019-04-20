# frozen_string_literal: true

# Class ArticlesCategory Controller
class ArticleCategoriesController < ApplicationController
  before_action :set_article_category, only: [:show, :edit, :update, :destroy]

  def index
    @article_categories = ArticleCategory.all
  end

  def show; end

  def new
    @article_category = ArticleCategory.new
  end

  def edit; end

  def create
    @article_category = ArticleCategory.new(article_category_params)

    respond_to do |format|
      if @article_category.save
        format.html { redirect_to @article_category, notice: 'Article category was successfully created.' }
        format.json { render :show, status: :created, location: @article_category }
      else
        format.html { render :new }
        format.json { render json: @article_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @article_category.update(article_category_params)
        format.html { redirect_to @article_category, notice: 'Article category was successfully updated.' }
        format.json { render :show, status: :ok, location: @article_category }
      else
        format.html { render :edit }
        format.json { render json: @article_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article_category.destroy
    respond_to do |format|
      format.html { redirect_to article_categories_url, notice: 'Article category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_article_category
      @article_category = ArticleCategory.find(params[:id])
    end

    def article_category_params
      params.require(:article_category).permit(:title)
    end
end
