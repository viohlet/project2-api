class RemoveStringFromUserStories < ActiveRecord::Migration
  def change
    remove_column :user_stories, :string, :string
  end
end
