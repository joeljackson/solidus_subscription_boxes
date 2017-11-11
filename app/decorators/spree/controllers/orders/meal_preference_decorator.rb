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
            @order.box_preference.preference.each do |key, value|
              if value.to_i > 0 then
                variant = Spree::Variant.find(key.to_i)
                @order.contents.add(variant, value.to_i)
              end
            end
          end
        end
      end
    end
  end
end

Spree::OrdersController.prepend(Spree::Controllers::Orders::MealPreferenceDecorator)
