class RemoveOrderRefFromProducts < ActiveRecord::Migration[7.1]
  def change
    remove_reference :products, :order, polymorphic: true, null: false
  end
end
