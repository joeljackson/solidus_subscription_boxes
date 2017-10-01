module SolidusSubscriptionBoxes
  module ApplicationHelper
    def is_checked(preferable, variant)
      if preferable.present? && preferable.box_preference.preference.map(&:to_i).include?(variant.id)
        "checked"
      else
        ""
      end
    end
  end
end
