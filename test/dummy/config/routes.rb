Rails.application.routes.draw do
  mount SolidusSubscriptionBoxes::Engine => "/solidus_subscription_boxes"
end
