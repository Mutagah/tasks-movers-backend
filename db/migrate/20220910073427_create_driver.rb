class CreateDriver < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers do |t|
    t.string :name
    t.string :age
    t.string :gender
    t.string :license_number
    t.string :vehicle_type_licensed
    t.timestamps
    end
  end
end
