class ChangeTableProducts < ActiveRecord::Migration[7.1]
  def change
    change_table :products do |t|
      t.remove :supplier
      t.rename :price, :unitPrice
    end
    change_column :products, :description, :text
  end
end
