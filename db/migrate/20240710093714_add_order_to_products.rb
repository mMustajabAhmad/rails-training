class AddOrderToProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :order, null: false, foreign_key: true
  end
end
