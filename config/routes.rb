SolidusSubscriptionBoxes::Engine.routes.draw do
  get '/get-started/:product_id' => 'subscription_boxes#get_started'
end
