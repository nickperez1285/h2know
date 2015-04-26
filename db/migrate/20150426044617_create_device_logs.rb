class CreateDeviceLogs < ActiveRecord::Migration
  def change
    create_table :device_logs do |t|
    	t.integer :currentconsumption

      t.timestamps 
    end
  end
end
