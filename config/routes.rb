SolidusSubscriptionBoxes::Engine.routes.draw do
  mount SolidusSubscriptions::Engine, at: '/'
  get '/get-started/:product_id' => 'subscription_boxes#get_started'
end
