module SolidusSubscriptionBoxes
  class SubscriptionPeriod < ApplicationRecord
    has_many :subscription_periods_variants, foreign_key: :solidus_subscription_boxes_subscription_period_id, class_name: 'SolidusSubscriptionBoxes::SubscriptionPeriodsVariant'
    has_many :variants, through: :subscription_periods_variants, class_name: 'Spree::Variant'
    belongs_to :boxable_variant, class_name: 'Spree::Variant', foreign_key: 'boxable_variant_id'

    def self.current
      period_for_date(Date.today)
    end

    def self.period_for_date(date)
      SubscriptionPeriod.where('start_date <= ?', date).order('start_date desc').first
    end
  end
end
