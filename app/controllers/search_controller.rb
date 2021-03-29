class SearchController < ApplicationController

    def search
        case(params[:site])
            when "ebay"
                url = "https://www.ebay.com/sch/i.html?_from=R40&_trksid=p2380057.m570.l1313&_nkw=#{params[:search_term]}"
            when "collectors"
                url = "https://www.collectors.com/search/all?searchterm=#{params[:search_term]}&sellerexclude=true&seller=93"
        end
        response = Unirest.get(url)
        render json: response.body

        # puts params[:search_term]
        # render json: Item.all.select{|item| close_enough(item.name, params[:search_term])}
    end
    
end