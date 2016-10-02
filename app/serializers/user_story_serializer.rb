class UserStorySerializer < ActiveModel::Serializer
  attributes :id, :role, :action, :goal
  has_one :project
end
