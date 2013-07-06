class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :github, :twitter, :url, :talk_ids, :book_ids, :screencast_ids
end
