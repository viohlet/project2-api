class CreateUserStories < ActiveRecord::Migration
  def change
    create_table :user_stories do |t|
      t.string :role
      t.string :string
      t.string :action
      t.string :goal
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
