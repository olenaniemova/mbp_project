# frozen_string_literal: true

# Class ArticlesController
class ArticlesController < ApplicationController
  # before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :set_article, only: %i[edit update destroy]
  before_action :set_article_show, only: %i[show]

  # GET /articles
  def index
    # @articles = Article.published
    @articles = Article.all
  end

  # GET /articles/1
  def show
    @author = Profile.find(@article.user_id)
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit; end

  # POST /articles
  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def user_articles
    @articles = current_user.articles.all
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = current_user.articles.find(params[:id])
    # @article = Article.find(params[:id])
  end

  def set_article_show
    @article = Article.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def article_params
    params.require(:article).permit(:title, :text, :source, :published, article_category_ids: [])
  end
end
