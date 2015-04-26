class CreateProfiles < ActiveRecord::Migration
	def change
		create_table :profiles do |t|
			t.integer "user_id"
			t.integer :bathshower
			t.integer :toilets
			t.integer :faucets
			t.integer :dishes
			t.integer :laundry 
			t.integer :garden
			t.integer :other 


			t.timestamps 
		end

		add_index :profiles, ["user_id"]
	end
end
