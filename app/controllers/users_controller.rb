class UsersController < ApplicationController

    def login
        @user = User.find_by(name: params[:name]) 
        if(@user && @user.password == params[:password])
            render json: @user
        else 
            render json: false
        end
    end

    def create
        @user = Users.create(user_params)
        render json: @user
    end

    def update
        @user = User.find_by(name: params[:name])
        @user.update(user_params)
        render json: @user
    end

    def destroy
        User.find_by(name: params[:name]).destroy
        render json: {}
    end

    def tracked_searches
        @user = User.find_by(name: params[:name])
        render json: @user.tracked_searches
    end

    def saved_items
        @user = User.find_by(name: params[:name])
        render json: @user.saved_items
    end

    private

    def user_params
        params.require(user).permit(name, password)
    end
end
