class CreateProjectPosts < ActiveRecord::Migration
  def change
    create_table :project_posts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
