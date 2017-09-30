module Spree
  module Controllers
    module Api
      module V1
        module Subscriptions
          module MealPreferenceDecorator
            def subscription_params
              params.require(:subscription).permit(
                line_items_attributes: line_item_attributes,
                shipping_address_attributes: Spree::PermittedAttributes.address_attributes,
                box_preference_attributes: {}
              )
            end
          end
        end
      end
    end
  end
end

SolidusSubscriptions::Api::V1::SubscriptionsController.prepend(Spree::Controllers::Api::V1::Subscriptions::MealPreferenceDecorator)