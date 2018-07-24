class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end
 

    def edit
        @article = Article.find_by( id: params[:id])
    end

    def update
        @article = Article.find_by( id: params[:id])
        para = article_params
        if @article.update( para.except(:content) )
            if !@article.article_detail.present?
                @article.create_article_detail({content: para[:content]})
            else
                @article.article_detail[:content]= para[:content]
            end
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
        @article = Article.new(para.except(:content))
        if @article.save
            @article.create_article_detail({content: para[:content]})
            redirect_to articles_path, notice: "新增文章成功!"
        else
            render :new
        end

    end

    private


    def article_params
        # 必須擷取限制長度的字串當作簡短介紹
        para = params.require(:article).permit(
            :title,:category,:brief,:author,:recommender,
            :image, :url
        )
        content = para[:brief]
        if content.length <30
            brief=content
        else
            brief=content[0...30]
        end
        para[:brief] = brief
        return para
    end

end
