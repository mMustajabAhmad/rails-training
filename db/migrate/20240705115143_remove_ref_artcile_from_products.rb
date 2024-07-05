class RemoveRefArtcileFromProducts < ActiveRecord::Migration[7.1]
  def change
    remove_reference :products, :article, foreign_key: true
  end
end
