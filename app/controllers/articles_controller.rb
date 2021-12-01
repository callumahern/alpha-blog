class ArticlesController < ApplicationController
  
  def show
    @article = Article.find(params[:id]) 
    # article is a variable that is assigned to the result of (for example) Article.find(1), displaying the Article that has an id of 1
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save 
      flash[:notice] = "Article was created successfully"
      redirect_to articles_path(@article)
    else
      render 'new'
    end
  end
end