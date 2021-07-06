class Book < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, :description, :author, :publication_date, :image_url, presence: true

  enum status: {
    read: 0,
    currently_reading: 1,
    future_read: 2
  }
end
