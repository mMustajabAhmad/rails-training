class CreateDelegatecomments < ActiveRecord::Migration[7.1]
  def change
    create_table :delegatecomments do |t|
      t.string :content

      t.timestamps
    end
  end
end
