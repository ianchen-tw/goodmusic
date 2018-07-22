class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end
 

    def edit
        @article = Article.find_by( id: params[:id])
    end

    def update
        @article = Article.find_by( id: params[:id])

        if @article.update( article_params )
            redirect_to articles_path, notice: "資料更新成功!"
        else
            render :edit
        end
    end

    def destroy
        @article = Article.find_by( id: params[:id])
        @article.destroy if  @article
        redirect_to articles_path, notice: "文章#{@article.title}已刪除"

    end

    def new #新增用的頁面
        @article = Article.new
    end

    def create #接住新增的資料
        para = article_params
        content = para[:brief]

        if content.length <30
            brief=content
        else
            brief=content[0...30]
        end
        
        para[:brief] = brief
        
        @article = Article.new(para)
        if @article.save
            redirect_to articles_path, notice: "新增文章成功!"
        else
            render :new
        end

        @article.create_article_detail({content: content})

    end

    private

    def article_params
        params.require(:article).permit(:title,:category, :brief)
    end

end
