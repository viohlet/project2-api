class Project < ActiveRecord::Base
  has_many :user_stories
  belongs_to :user
end
