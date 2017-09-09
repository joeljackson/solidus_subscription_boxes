module SolidusSubscriptionBoxes
  class BoxPreference
    belongs_to :preferable, polymorphic: true
    serialize :preference, Array

    def variants
      Spree::Variant.where(id: preference.map(&:to_i))
    end
  end
end
