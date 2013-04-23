class LinkSerializer < ActiveModel::Serializer
  attributes :id, :tweet_id, :url, :posted_at, :md5
end
