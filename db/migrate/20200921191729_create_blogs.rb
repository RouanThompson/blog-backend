class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :cover_image
      t.string :title
      t.text :story
      t.integer :likes

      t.timestamps
    end
  end
end
