module SolidusSubscriptionBoxes
  module ApplicationHelper
    def is_checked(preferable, variant)
      if preferable.present? && preferable.box_preference.preference.map(&:to_i).include?(variant.id)
        "checked"
      else
        ""
      end
    end

    def preferable_value(box_preference, variant_id)
      if box_preference.present?
        box_preference.preference.fetch(variant_id.to_s){ 0 }
      else
        0
      end
    end
  end
end
