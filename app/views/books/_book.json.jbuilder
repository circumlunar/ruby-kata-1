json.extract! book, :id, :title, :isbn, :description, :created_at, :updated_at
json.url book_url(book, format: :json)
