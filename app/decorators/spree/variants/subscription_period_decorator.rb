module Spree
    module Variants
      module SubscriptionPeriodsDecorator
        def self.prepended(klass)
          klass.has_many :boxed_subscription_periods_variants, foreign_key: :spree_variant_id, class_name: 'SolidusSubscriptionBoxes::SubscriptionPeriodsVariant'
          klass.has_many :boxed_subscription_periods, through: :boxed_subscription_periods_variants, class_name: 'SolidusSubscriptionBoxes::SubscriptionPeriod', source: :subscription_period
          klass.has_many :subscription_periods, foreign_key: :boxable_variant_id, class_name: 'SolidusSubscriptionBoxes::SubscriptionPeriod'
          klass.accepts_nested_attributes_for :subscription_periods
        end
      end
    end
  end
  
  Spree::Variant.prepend Spree::Variants::SubscriptionPeriodsDecorator