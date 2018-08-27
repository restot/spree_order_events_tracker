class CreateSpreeOrderEventsTracker < ActiveRecord::Migration[4.2]
  def change
    create_table :spree_order_events_trackers do |t|
      t.text :entity_errors
      t.text :flash
      t.text :request_parameters
      t.text :updated_parameters
      t.string :ip_address
      t.string :entity_type
      t.integer :response_code
      t.references :user
      t.references :order

      t.timestamps null: false
    end
  end
end
