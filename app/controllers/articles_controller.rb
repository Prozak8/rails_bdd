class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end
 
  def create
    @article = Article.new(article_params)
   
    if @article.save
      flash[:success] = 'Article was successfully created.'
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
   
    redirect_to @article
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end
end