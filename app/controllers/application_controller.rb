class ApplicationController < ActionController::API
    before_action :authenticate_user
    include ActionController::Cookies

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def current_user
        @current_user ||= User.find_by_id(session[:user_id])
    end

    private

    def authenticate_user
        render json: { errors: ["Not authorized"]}, status: :unauthorized unless current_user
    end

    def authorized
        @user_id = session[:user_id]
        @review = Review.find(params[:id])
        render json: { errors: ["You are not authorized to edit or delete this review."]}, status: :unauthorized unless @review.user_id == @user_id
    end

    def render_unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

    def render_not_found_response(error)
        render json: {message: error.message}, status: :not_found
    end
end
