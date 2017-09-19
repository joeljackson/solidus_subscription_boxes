module SolidusSubscriptionBoxes
  class SubscriptionPeriod < ApplicationRecord
    has_many :subscription_periods_variants
    has_many :variants, through: :subscription_periods_variants, class_name: 'Spree::Variant'
    belongs_to :boxable_variant, class_name: 'Spree::Variant', foreign_key: 'boxable_variant_id'

    def self.current
      SubscriptionPeriod.where('start_date <= ?', Date.today).order('start_date desc').last
    end
  end
end
