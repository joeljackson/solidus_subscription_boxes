module SolidusSubscriptionBoxes
  class SubscriptionPeriodsVariant < ApplicationRecord
    belongs_to :variant, class_name: 'Spree::Variant', foreign_key: :spree_variant_id
    belongs_to :subscription_period, class_name: 'SolidusSubscriptionBoxes::SubscriptionPeriod', foreign_key: 'solidus_subscription_boxes_subscription_period_id'
  end
end
