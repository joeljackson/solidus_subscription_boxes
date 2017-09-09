class SolidusSubscriptionBoxes::SubscriptionBoxesController < Spree::StoreController
  def get_started
    @box_variants = SolidusSubscriptionBoxes::SubscriptionPeriod.current.variants
    @variant_id = Spree::Variant.where(sku: 'ELMLUNCHES').pluck(:id).first
  end
end
