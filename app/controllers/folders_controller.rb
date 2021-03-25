class FoldersController < ApplicationController
    
    def items
        @folder = Folder.find(params[:id])
        render json: @folder.items
    end
    
    def create
        @folder = Folder.create(folder_params)
        render json: @folder
    end

    def destroy
        Folder.find(params[:id]).destroy
        render json: {}
    end

    private
    
    def folder_params
        params.require(:folder).permit(:name, :folder_type, :user_id)
    end
end
