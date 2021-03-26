class SearchController < ApplicationController

    def search
        puts params[:search_term]
        render json: Item.all.select{|item| close_enough(item.name, params[:search_term])}
    end
    
end