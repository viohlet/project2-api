class Project < ActiveRecord::Base
  has_many :user_stories, dependent: :destroy
  belongs_to :user
end
