class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :user_stories
end
