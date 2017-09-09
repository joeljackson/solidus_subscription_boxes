module Spree
  module Controllers
    module Orders
      module MealPreferenceDecorator
        def self.prepended(base)
          base.after_action(
            :set_box_preference,
            only: :populate
          )
        end

        private
        def set_box_preference
          if params[:box_preference_attributes]
            params[:box_preference_attributes].permit!
            @order.update_attributes(box_preference_attributes: params[:box_preference_attributes].to_hash)
          end
        end
      end
    end
  end
end

Spree::OrdersController.prepend(Spree::Controllers::Orders::MealPreferenceDecorator)
