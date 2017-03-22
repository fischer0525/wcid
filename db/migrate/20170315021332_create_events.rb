class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :event_date, null: false
      t.string :event_time, null: false
      t.string :event_name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip, null: false
      t.string :neighborhood
      t.string :description, null: false
    end
  end
end
