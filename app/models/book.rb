class Book < ApplicationRecord
  validates :title, :description, :author, :publication_date, :image_url, presence: true

  enum status: {
    read: 0,
    currently_reading: 1,
    future_read: 2
  }
end
