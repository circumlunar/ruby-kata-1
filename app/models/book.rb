class Book < ApplicationRecord
  include CsvImport

  has_many :authors_books
  has_many :authors, through: :authors_books

  scope :by_isbn, -> (isbn) { where(isbn: isbn) }
  scope :by_author_email, -> (email) { joins(:authors).where(authors: { email: email }) }
end
