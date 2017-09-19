class SolidusSubscriptionBoxes::SubscriptionBoxesController < Spree::StoreController
  def get_started
  	@variant_id = Spree::Product.find_by_slug(params[:product_id]).master
    @box_variants = SolidusSubscriptionBoxes::SubscriptionPeriod.where(boxable_variant_id: @variant_id).current.variants
  end
end
