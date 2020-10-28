class AuthorsEdition < ApplicationRecord
  belongs_to :author, inverse_of: :authors_editions
  belongs_to :edition, inverse_of: :authors_editions
end
