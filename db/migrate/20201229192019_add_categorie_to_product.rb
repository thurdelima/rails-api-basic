class AddCategorieToProduct < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :categorie, index: true, foreign_key: true
  end
end
