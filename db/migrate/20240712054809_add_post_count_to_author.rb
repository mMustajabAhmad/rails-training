class AddPostCountToAuthor < ActiveRecord::Migration[7.1]
  def change
      add_column :authors, :posts_count, :integer, default: 0
  end
end
