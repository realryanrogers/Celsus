json.extract! book, :id, :title, :isbn, :author, :rating, :review, :readdate, :created_at, :updated_at
json.url book_url(book, format: :json)
