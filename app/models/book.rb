class Book < ApplicationRecord
  enum status: {
    read: 0,
    currently_reading: 1,
    future_read: 2
  }
end
