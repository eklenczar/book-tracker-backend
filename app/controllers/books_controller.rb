class BooksController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    
    def index
        books = Books.all
        render_json: books, status: :ok
    end
    
    # GET /books/:id
    def show
        book = find_book
        render json: book
    end

    def create
        book = Book.create(book_params)
        render json: book, status: :created
    end

    # PATCH /books/:id
    def update
        book = find_book
        book.update(book_params)
        render json: book
    end

      def destroy
        book = find_book
        book.destroy
        head :no_content
      end

    private

    def book_params
        params.permit(:title, :author, :genre)
    end

    def render_not_found_response
        render json: { error: "Book not found" }, status: :not_found
    end

    def find_book
        Book.find(id: params[:id])
    end
end
