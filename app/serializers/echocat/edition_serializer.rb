module Echocat
  class EditionSerializer < ActiveModel::Serializer
    type 'editions'

    attributes :title,
               :isbn,
               :edition_type,
               :description,
               :published_at

    has_many :authors, serializer: Echocat::AuthorSerializer do
      object.authors
    end
  end
end
