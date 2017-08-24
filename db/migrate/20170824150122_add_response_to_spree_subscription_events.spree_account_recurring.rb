# This migration comes from spree_account_recurring (originally 20140319092254)
class AddResponseToSpreeSubscriptionEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_subscription_events, :response, :text
  end
end
