class SolidusSubscriptionBoxes::SubscriptionBoxesController < Spree::StoreController
  def get_started
    @box_variants = SolidusSubscriptionBoxes::SubscriptionPeriod.current.variants
    @variant_id = Spree::Variant.first.id
  end
end
