class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end
 

    def edit
        @article = Article.find_by( id: params[:id])
    end

    def show
        @article = Article.find_by( id: params[:id])
    end

    def update
        @article = Article.find_by( id: params[:id])
        para = article_params
        if @article.update_with_content(para)
            redirect_to articles_path, notice: "資料更新成功!"
        else
            render :edit
        end
    end

    def destroy
        @article = Article.find_by( id: params[:id])
        if !@article.nil?
            @article.destroy
            redirect_to articles_path, notice: "文章#{@article.title}已刪除"
        else
            redirect_to articles_path, notice: "不存在的文章, id=#{params[:id]}"
        end 
        
    end

    def new #新增用的頁面
        @article = Article.new
    end

    def create
        #接住新增的資料
        # 未來希望能夠讓使用者設定是否使用客製化文字當作文章的簡短敘述
        para = article_params
        content = para[:brief]
        para[:brief] = content.length<30? content : content[0..30] 
        @article = Article.new(para)
        if @article.save
            @article.create_article_detail({content: content})
            redirect_to articles_path, notice: "新增文章成功!"
        else
            render :new, notice: "新增失敗"
        end

    end

    private

    def article_params
        # 必須擷取限制長度的字串當作簡短介紹
        para = params.require(:article).permit(
            :title,:category,:brief,:author,:recommender,
            :article_type_id,:publish_at,
            :image, :url, :artist,
        )
        return para
    end

end
