class FixByPopularity < ActiveRecord::Migration[5.1]
  def up
    execute("UPDATE spree_product_scopes SET name='descend_by_popularity' WHERE name='by_popularity'")
  end

  def down
    execute("UPDATE spree_product_scopes SET name='by_popularity' WHERE name='descend_by_popularity'")
  end
end
