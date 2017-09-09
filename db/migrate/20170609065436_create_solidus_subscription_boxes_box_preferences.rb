class CreateSolidusSubscriptionBoxesBoxPreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :solidus_subscription_boxes_box_preferences do |t|
      t.json :preference
      t.references :preferable, polymorphic: true, index: { name: 'subscription_box_preferable' }

      t.timestamps
    end
  end
end
