module SolidusSubscriptionBoxes
  module ApplicationHelper
    def is_checked(preferable, variant)
      if preferable.present? && preferable.box_preference.preference.map(&:to_i).include?(variant.id)
        "checked"
      else
        ""
      end
    end

    def preferable_value(box_preference, variant_id, order = nil)
      if box_preference.present?
        box_preference.preference.fetch(variant_id.to_s){ 0 }
      elsif order.present?
        line_item = order.line_items.detect{|li| li.variant_id == variant_id}
        if line_item.present?
          line_item.quantity
        else
          0
        end
      else
        0
      end
    end
  end
end
