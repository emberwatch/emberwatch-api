class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :person_id, :publisher_id, :price, :url
end
