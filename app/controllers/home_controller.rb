class HomeController < ApplicationController
  def index
    @books = Book.all
  end

  def statistics
  end

  def about
  end
end
