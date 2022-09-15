class CreateTask < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :task_description
      t.string :departure_location
      t.string :destination_location
      t.string :estimated_distance_in_km
      t.integer :driver_id
      t.integer :vehicle_id
    end
  end
end
