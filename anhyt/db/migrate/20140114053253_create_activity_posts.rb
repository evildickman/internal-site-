class CreateActivityPosts < ActiveRecord::Migration
  def change
    create_table :activity_posts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
