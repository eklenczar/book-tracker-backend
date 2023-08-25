class SessionsController < ApplicationController
    skip_before_action :authenticate_user, only: [:create, :destroy]

    def create
        user = User.find_by_name(params[:name])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user, status: :ok
        else
            render json: {errors: ["Invalid Credentials"] }, status: :unauthorized
        end
    end

    def destroy
        session.delete(:user_id)
        head :no_content
    end

end