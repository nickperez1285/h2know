class CreateDeviceLogs < ActiveRecord::Migration
  def change
    create_table :device_logs do |t|
    	t.integer :values

      t.timestamps 
    end
  end
end
