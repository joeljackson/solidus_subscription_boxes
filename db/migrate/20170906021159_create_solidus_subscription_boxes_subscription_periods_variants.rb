class CreateSolidusSubscriptionBoxesSubscriptionPeriodsVariants < ActiveRecord::Migration[5.1]
  def change
    create_table :solidus_subscription_boxes_subscription_periods_variants do |t|
      t.references :spree_variant, foreign_key: true, index: {name: 'subscription_box_period_variant'}
      t.references :solidus_subscription_boxes_subscription_period, foreign_key: true, index: {name: 'subscription_box_period_period'}

      t.timestamps
    end
  end
end
