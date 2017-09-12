class ProductGroupsAndScopes < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_product_groups do |t|
      t.references :spree_users
      t.string :name, :permalink, :order
    end

    create_table :spree_product_scopes do |t|
      t.string   :name
      t.text     :arguments
      t.references :spree_product_group
    end

    add_index :spree_product_groups, :name
    add_index :spree_product_groups, :permalink
    add_index :spree_product_scopes, :name
  end
end
