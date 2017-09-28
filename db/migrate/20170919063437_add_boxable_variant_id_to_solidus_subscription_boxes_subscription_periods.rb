class AddBoxableVariantIdToSolidusSubscriptionBoxesSubscriptionPeriods < ActiveRecord::Migration[5.1]
  def change
    add_column :solidus_subscription_boxes_subscription_periods, :boxable_variant_id, :integer
  end
end
