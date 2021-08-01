class BooksChannel < ApplicationCable::Channel
  def subscribed
    stream_from "books_#{params['book_id']}_channel"
  end

  def unsubscribed
  end

  def send_comment(data)
    current_user.comments.create!(content: data['comment'], book_id: data['book_id'])
  end
end