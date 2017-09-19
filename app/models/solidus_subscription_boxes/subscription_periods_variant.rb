module SolidusSubscriptionBoxes
  class SubscriptionPeriodsVariant < ApplicationRecord
    belongs_to :variant, class_name: 'Spree::Variant', foreign_key: :spree_variant_id
    belongs_to :subscription_period, foreign_key: :solidus_subscription_boxes_subscription_period_id, class_name: 'SolidusSubscriptionBoxes::SubscriptionPeriod'
  end
end
