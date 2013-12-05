class CreateSensorData < ActiveRecord::Migration
  def change
    create_table :sensor_data do |t|
      t.string :sensor
      t.string :data

      t.timestamps
    end
  end
end
