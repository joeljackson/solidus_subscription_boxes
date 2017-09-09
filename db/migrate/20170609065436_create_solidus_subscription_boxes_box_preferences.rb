class CreateBoxPreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :solidus_subscription_box_box_preferences do |t|
      t.json :preference
      t.references :preferable, polymorphic: true

      t.timestamps
    end
  end
end
