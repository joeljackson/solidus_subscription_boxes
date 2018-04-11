module Spree
  module Products
    module BoxableDecorator
      def self.prepended(klass)
        klass.delegate :"boxable", :"boxable=", to: :find_or_build_master
        klass.delegate :"boxed_subscription_periods_variants", to: :find_or_build_master
        klass.delegate :"boxed_subscription_periods", to: :find_or_build_master
        klass.delegate :"subscription_periods", to: :find_or_build_master
        klass.accepts_nested_attributes_for :master
      end
    end
  end
end

Spree::Product.prepend Spree::Products::BoxableDecorator
