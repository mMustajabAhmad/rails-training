class AddReferenceToProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :order, polymorphic: true, null: false
  end
end
