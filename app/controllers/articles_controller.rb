class ArticlesController < ApplicationController
	http_basic_authenticate_with name: "ydcun",password: "ydcun",except:[:index, :show]

	def new
		@article = Article.new
	end
	def create   #C
		@article = Article.new(article_params)
		if @article.save
			redirect_to @article
		else
			render 'new'
		end
		#render plain: params[:article].inspect
	end
	def show     #R
		@article = Article.find(params[:id])
	end

	def edit    
    	@article = Article.find(params[:id])
    end
    def update   #U
    	@article = Article.find(params[:id])
    	if @article.update(article_params)
    		redirect_to @article
    	else
    		render 'edit'
    	end
    end

    def destroy
    	@article = Article.find(params[:id])
    	@article.destroy
    	redirect_to articles_path    #会自动转向index动作
 	end

	def index
		@articles = Article.all
	end
	private
		def article_params
			params.require(:article).permit(:title, :text)
		end

	
end
