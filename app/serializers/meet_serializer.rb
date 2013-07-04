class MeetSerializer < ActiveModel::Serializer
  attributes :id, :name, :kind, :url, :meetup_id, :talk_ids
end
