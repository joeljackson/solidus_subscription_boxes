module Spree
  module Products
    module Boxable
      def self.prepended(klass)
        klass.delegate :"boxable", :"boxable=", to: :find_or_build_master
      end
    end
  end
end

Spree::Product.prepend Spree::Products::Boxable
