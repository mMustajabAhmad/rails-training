class AddArticleReferenceToProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :article, null: false, foreign_key: true
  end
end
