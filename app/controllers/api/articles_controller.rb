class Api::ArticlesController < ApplicationController
  before_action :set_article, only: [:show,:edit,:update,:destroy] 
  def index
    @articles = Article.all
    json_reponse @articles
  end

  def show
    json_reponse @article
  end

  def new

  end

  def create
    @article = Article.new article_params
    if @article.save
      json_reponse(@article,status: :created)
    end
  end

  def edit
    json_reponse @article
  end

  def update
    if @article.update article_params
      json_reponse @article
    else
      error_response
    end

  end

  def destroy
    if @article.destroy
      json_reponse(message: 'Deleted',status: :ok)
    else
      error_response
    end
  end
  def article_params
    params.require(:article).permit(:title,:text)
  end
  def set_article
    @article = Article.find_by id: params[:id]
  end
  def json_reponse(oject,status=:ok)
    render json: oject, status: status
  end
  def error_response(status = :error)
    json_response(message: :error, status: status)
  end
end
