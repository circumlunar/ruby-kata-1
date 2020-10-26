class AuthorsMagazine < ApplicationRecord
  belongs_to :author, inverse_of: :authors_magazines
  belongs_to :magazine, inverse_of: :authors_magazines
end
