class PublisherSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :book_ids, :screencast_ids
end
