class UsersController < ApplicationController

    def login
        @user = User.find_by(name: params[:name]) 
        if(@user && @user.password == params[:password])
            render json: @user
        else 
            render json: ["Invalid username or password"], status: :unauthorized
        end
    end

    def main
        @user=User.find(params[:id])
        render json: @user.main
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            render json: @user
        else
            render json: @user.errors.full_messages, status: :precondition_failed
        end
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user
    end

    def destroy
        User.find(params[:id]).destroy
        render json: {}
    end

    def tracked_searches
        @user = User.find(params[:id])
        render json: @user.tracked_searches
    end

    def save_search
        @user = User.find(params[:id])
        @folder = @user.save_folder_and_items(params[:name], params[:items], "trackedsearches")
        render json: @folder
    end

    def saved_items
        @user = User.find(params[:id])
        render json: @user.saved_items
    end

    def save_item_new_folder
        @user = User.find(params[:id])
        @folder = @user.save_folder_and_items(params[:name], [params[:item]], "saveditems")
        render json: @folder
    end

    private

    def user_params
        params.require(:user).permit(:name, :password)
    end
end
