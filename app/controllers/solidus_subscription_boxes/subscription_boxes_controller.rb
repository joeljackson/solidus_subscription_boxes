class SolidusSubscriptionBoxes::SubscriptionBoxesController < Spree::StoreController
  def get_started
  	@variant = Spree::Product.find_by_slug(params[:product_id]).master
    @box_variants = SolidusSubscriptionBoxes::SubscriptionPeriod.where(boxable_variant_id: @variant.id).current.variants
    @order = current_order
  end
end
