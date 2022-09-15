class AddImageToDrivers < ActiveRecord::Migration[7.0]
  def change
    add_column :drivers, :driver_image, :string
  end
end
