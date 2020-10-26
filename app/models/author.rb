class Author < ApplicationRecord
  include CsvImport

  has_many :authors_books
  has_many :books, through: :authors_books

  has_many :authors_magazines
  has_many :magazines, through: :authors_magazines
end
