class UsersController < ApplicationController
    skip_before_action :authenticate_user, only: [:show, :create]

    def show
        user = User.find_by(id: session[:user_id])
        if user
          render json: user
        else
          render json: { error: ["Not authorized"] }, status: :unauthorized
        end
    end

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :ok
    end
    
    private

    def user_params
        params.permit(:name, :email, :password)
    end
end
