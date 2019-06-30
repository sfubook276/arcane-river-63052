class ApplicationController < ActionController::Base
    def search
        @articles = Article.where("title LIKE ?", "%#params[:search]%")   # ? replaces the place holder with the search arguments
    end
end
