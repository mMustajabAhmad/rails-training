class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users, comment: 'Table to store user information'  do |t|
      t.string :name, index: true
      t.string :email, index: { unique: true, name: 'unique_emails' }
      
      t.timestamps
    end
  end
end
