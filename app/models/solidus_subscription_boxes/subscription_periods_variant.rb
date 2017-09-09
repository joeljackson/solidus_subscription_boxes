module SolidusSubscriptionBoxes
  class SubscriptionPeriodsVariant < ApplicationRecord
    belongs_to :variant, class_name: 'Spree::Variant', foreign_key: :spree_variant_id
    belongs_to :subscription_period
  end
end
