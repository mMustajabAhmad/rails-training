class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.string :items

      t.timestamps
    end
  end
end
