class TalkSerializer < ActiveModel::Serializer
  attributes :id, :title, :subtitle, :delivered_at, :video_url, :details_url, :slides_url, :meet_id, :person_id
end
