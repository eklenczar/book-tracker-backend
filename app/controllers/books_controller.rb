class BooksController < ApplicationController
    skip_before_action :authenticate_user, only: [:index, :show, :create, :destroy]
    
    def index
        books = Book.all
        render json: books
    end
    
    # GET /books/:id
    def show
        book = find_book
        render json: book
    end

    def create
        book = Book.create!(book_params)
        render json: book, status: :created
    end

    def destroy
        book = find_book
        book.destroy
        render json: {}
    end

    private

    def book_params
        params.permit(:title, :author, :genre, :image, :description)
    end

    def find_book
        Book.find(params[:id])
    end
end
