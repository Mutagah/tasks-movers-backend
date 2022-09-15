class CreateVehicle < ActiveRecord::Migration[7.0]
  def change
  create_table :vehicles do |t|
    t.string :registration_no
    t.string :vehicle_type
    t.string :vehicle_image_url
    t.string :vehicle_condition
    t.timestamps
  end
  end
end
