class AddColumnToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :count, :integer
    add_column :users, :num, :integer
  end
end
