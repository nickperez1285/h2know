class CreateProfiles < ActiveRecord::Migration
	def change
		create_table :profiles do |t|
			t.integer "user_id"
			t.integer :bathshower
			t.integer :kitchen
			t.integer :sinks
			
			t.integer :other 

			t.timestamps 
		end

		add_index :profiles, ["user_id"]
	end
end
