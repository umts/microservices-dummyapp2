class CreateParkingSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :parking_spaces do |t|
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
