class Magazine < ApplicationRecord
  include CsvImport

  has_many :authors_magazines
  has_many :authors, through: :authors_magazines

  scope :by_isbn, -> (isbn) { where(isbn: isbn) }
  scope :by_author_email, -> (email) { joins(:authors).where(authors: { email: email }) }
end
