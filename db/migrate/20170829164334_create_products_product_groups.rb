class CreateProductsProductGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_product_groups_products, :id => false do |t|
      t.references :product
      t.references :spree_product_group
    end
  end
end
