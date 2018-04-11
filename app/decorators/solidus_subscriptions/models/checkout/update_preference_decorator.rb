module SolidusSubscriptions
  module Models
    module Checkout
      module UpdatePreferenceDecorator
        def order
          order = super
          order.box_preference = subscription.box_preference unless order.box_preference.present?
        end
      end
    end
  end
end

SolidusSubscriptions::Checkout.prepend(SolidusSubscriptions::Models::Checkout::UpdatePreferenceDecorator)