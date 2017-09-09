module Spree
  module Orders
    module PreferenceDecorator
      def self.prepended(base)
        base.has_one :box_preference, as: :preferable, class_name: 'SolidusSubscriptionBoxes::BoxPreference'
        base.accepts_nested_attributes_for :box_preference
      end
    end
  end
end

Spree::Order.prepend(Spree::Orders::PreferenceDecorator)
SolidusSubscriptions::Subscription.prepend(Spree::Orders::PreferenceDecorator)
SolidusSubscriptions::Installment.prepend(Spree::Orders::PreferenceDecorator)
