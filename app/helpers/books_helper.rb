module BooksHelper
  def format_date(date)
    date.strftime("%B %-d %Y")
  end

  def format_date_by_year(books_hash)
    books_hash.transform_keys { |k| k.strftime("%Y") }
  end

  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end

  def book_img(img, type)
    if img.model.image?
      img.url
    elsif type == 'book_cover'
      image_generator(height: '200', width: '300')
    end
  end
end