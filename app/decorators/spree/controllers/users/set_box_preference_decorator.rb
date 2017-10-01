module Spree
  module Controllers
    module Users
      module SetBoxPreferenceDecorator
        def self.prepended(base)
          base.before_action(
            :set_box_preferences,
            only: :show
          )
        end

        private
        def set_box_preferences
          @user.generate_spree_api_key! unless @user.spree_api_key

          must_change_subscriptions = @user.subscriptions.find_all do |subscription|
            subscription.box_preference.nil?              
          end

          must_change_subscriptions.each do |subscription|
            potential_variants = SolidusSubscriptionBoxes::SubscriptionPeriod.period_for_date(subscription.actionable_date).variants
            subscription.box_preference = SolidusSubscriptionBoxes::BoxPreference.new(preference: potential_variants.sample(3).map(&:id))
          end
        end
      end
    end
  end
end
  
Spree::UsersController.prepend(Spree::Controllers::Users::SetBoxPreferenceDecorator)
