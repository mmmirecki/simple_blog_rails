class ArticlesController < ApplicationController
    def index
        @articles = Article.all
        logger.debug(params[:status])
        if params[:category]
            @selected_category = params[:category]
        else
            @selected_category = 'all'
        end
        if params[:status] 
            @displayed_articles = params[:status]
        else
            @displayed_articles = 'all'
        end
    end

    def show
        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)

        if @article.save
            redirect_to @article
        else
            render :new
        end
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])

        if @article.update(article_params)
            redirect_to @article
        else
            render :edit
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy

        redirect_to articles_path
    end

    private
        def article_params
            params.require(:article).permit(:title,:body,:status,:category)
        end

end
