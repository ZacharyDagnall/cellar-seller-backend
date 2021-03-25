class ItemsController < ApplicationController

    def create
        @item = Item.create(item_params)
        render json: @item
    end

    def destroy
        Item.find(params[:id]).destroy
        render json: {}
    end
    
    private

    def item_params
        params.require(:item).permit(:name, :url, :price, :img, :folder_id)
    end

end
