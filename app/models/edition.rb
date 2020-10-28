class Edition < ApplicationRecord
  has_many :authors_editions
  has_many :authors, through: :authors_editions

  scope :by_isbn, -> (isbn) { where(isbn: isbn) }
  scope :by_author_email, -> (email) { joins(:authors).where(authors: { email: email }) }
  scope :ordered_by_title, -> { order(title: :asc) }
end
