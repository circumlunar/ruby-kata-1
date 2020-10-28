module Echocat
  class AuthorSerializer < ActiveModel::Serializer
    type 'authors'

    attributes :email,
               :first_name,
               :last_name

    has_many :editions, serializer: Echocat::EditionSerializer do
      object.editions
    end
  end
end
