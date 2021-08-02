class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :content, presence: true, length: { minimum: 5 }

  after_create_commit { CommentBroadcastJob.perform_later(self) }

  has_rich_text :content
end
