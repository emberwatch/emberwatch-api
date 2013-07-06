class PodcastSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :episode, :duration, :publisher_id, :published_at, :person_ids
end
