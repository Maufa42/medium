class ArticlesController < ApplicationController
  def index
   @articles = Article.all
    # redirect_to "https://en.wikipedia.org/wiki/Shiva"
  end
    def show
      @article_view = Article.find(params[:id])
    end
    def new
      @article_new = Article.new
    end
    def create
      @article_crt = Article.new(title: "...", body: "...")
      
      if @article_crt.save
        redirect_to @article_view
      else
        render :new, status: :unprocessable_entity
    end
    def edit
      @article_edit = Article.find(params[:id])
    end

    def update
      @article_up = Article.find(params[:id])

      if @article_up.update(article_params)
        redirect_to @article_view
      else
        render :edit, status: :unprocessable_entity
      end
    end

    private
    def article_params
      params.require(:article_crt).permit(:title,:body)
    end

end
