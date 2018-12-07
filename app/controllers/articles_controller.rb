class ArticlesController < ApplicationController
  before_action :set_article, only: [:show,:edit,:update,:destroy] 
  def index
    @articles = Article.all.newest
  end

  def new
    @article = Article.new
  end

  def show
    
  end

  def create
    @article = Article.new article_params
    if @article.save
      redirect_to @article
    else 
      render :new
    end
  end
  
  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to @article
    else 
      render 'edit'
    end 
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private 

  def article_params
    params.require(:article).permit(:title,:text)
  end

  def set_article
    @article =Article.find_by id: params[:id]
  end
end
