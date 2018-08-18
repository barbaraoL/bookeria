class BooksController < ApplicationController
	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new (books_params)
		@book.save

		redirect_to @book
	end

	def show
		@book = Book.find(params[:id])
	end

	private

	def books_params
		params.require(:book).permit(:title, :author, :genre, :year)
	end
end