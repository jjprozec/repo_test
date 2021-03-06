class ArticlesController < ApplicationController
    def new
      @article = Article.new
    end

    def show
      @article = Article.find(params[:id])
    end

    def destroy
      @article = Article.find(params[:id])
      @article.destroy
      redirect_to root_path
    end

    def edit
      @article = Article.find(params[:id])
    end

    def update
      @article = Article.find(params[:id])
      @article.update(title: params[:article][:title],content: params[:article][:content])

      redirect_to @article
    end


    def create
      @article = Article.create(title: params[:article][:title],content: params[:article][:content])
      render json: @article
    end
    
end
