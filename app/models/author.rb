class Author < ApplicationRecord
  has_many :authors_editions
  has_many :editions, through: :authors_editions

  scope :all_editions, -> (author_id) { joins(:authors_books, :authors_magazines).where(authors_magazines: { author_id: author_id }).where(authors_books: { author_id: author_id }) }
end
