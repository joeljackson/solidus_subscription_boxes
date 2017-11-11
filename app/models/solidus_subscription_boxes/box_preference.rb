module SolidusSubscriptionBoxes
  class BoxPreference < ApplicationRecord
    belongs_to :preferable, polymorphic: true
    serialize :preference, Hash

    def variants
      Spree::Variant.where(id: preference.map(&:to_i))
    end
  end
end
