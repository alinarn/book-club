class Book < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, :description, :author, :publication_date, :pages, presence: true

  validates_each :status, on: [:create, :update] do |record, attr, value|
    record.errors.add(attr, 'currently reading is already taken, add book to future read') if value == "currently_reading"
  end

  has_many :comments, dependent: :destroy

  mount_uploader :image, BookUploader

  scope :group_by_publication_date, -> { read.group(:publication_date).count }

  enum status: {
    read: 1,
    currently_reading: 2,
    future_read: 3
  }
end
