class CreateSubscriptionPeriods < ActiveRecord::Migration[5.1]
  def change
    create_table :solidus_subscription_box_subscription_periods do |t|
      t.date :start_date

      t.timestamps
    end
  end
end
