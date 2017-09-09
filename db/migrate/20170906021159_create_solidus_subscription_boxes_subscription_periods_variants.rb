class CreateSubscriptionPeriodsVariants < ActiveRecord::Migration[5.1]
  def change
    create_table :solidus_subscription_box_subscription_periods_variants do |t|
      t.references :spree_variant, foreign_key: true
      t.references :subscription_period, foreign_key: true

      t.timestamps
    end
  end
end
