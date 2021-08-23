class BooksController < ApplicationController
  before_action :set_book, only: %i[ show edit update destroy ]
  before_action :logged_in_user, only: [:new, :edit, :update]

  # GET /books/1 or /books/1.json
  def show
    @book = Book.includes(:comments).friendly.find(params[:id])
    @comment = Comment.new
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books or /books.json
  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
      flash[:success] = "Book was successfully created"
    else
      render :new
    end
  end

  # PATCH/PUT /books/1 or /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book }
        format.js
        flash[:success] = "Book was successfully updated"
      else
        format.html { render :edit }
      end
    end
  end

  def read
    @books_read = Book.read
  end

  def future_read
    @future_read_books = Book.future_read
  end

  def statistics
    read
    @books_by_publication_date = Book.group_by_publication_date
    @books_average_pages = Book.read.average(:pages).to_i
  end

  # DELETE /books/1 or /books/1.json
  def destroy
    @book.destroy
      flash[:success] = "book was deleted!"
      redirect_to root_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_params
      params.require(:book).permit(:title, :description, :author, :publication_date, :image, :pages, :status)
    end

    def logged_in_user
      unless current_user
      respond_to do |format|
          format.html { redirect_to login_url, status: :not_found }
          flash[:warning] = "only logged in users can do that!"
        end
      end
    end
end