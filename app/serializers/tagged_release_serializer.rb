class TaggedReleaseSerializer < ActiveModel::Serializer
  attributes :id, :title, :project, :tag, :build, :announcement, :tagged_at
end
