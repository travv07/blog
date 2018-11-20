class CommentsController < ApplicationController
	before_action :get_article

	def create
		@comment = @article.comments.create(comment_params)
		redirect_to article_path(@article)
	end

	private

	def comment_params
		params.require(:comment).permit(:commenter,:body)
	end

	def get_article
		@article = Article.find_by params[:article_id]
		return if @article
		flash[:danger] = "Article not found"
		redirect_to articles_path
	end
end
