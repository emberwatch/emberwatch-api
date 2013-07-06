class ScreencastSerializer < ActiveModel::Serializer
  attributes :id, :title, :subtitle, :published_at, :url, :video_url, :person_id, :publisher_id
end
