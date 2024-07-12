class ChangeProductsPrice < ActiveRecord::Migration[7.1]
  # def change
  #   reversible do |direction|
  #     change_table :products do |t|
  #       direction.up { t.change :price, :string}
  #       direction.down {t.change :price, :integer, using: 'price::integer'}
  #     end
  #   end
  # end

  def up
    change_table :products do |t|
      t.change :price, :integer, using: 'price::integer'
    end
  end

  def down
    change_table :products do |t|
      t.change :price, :string
    end
  end

end
