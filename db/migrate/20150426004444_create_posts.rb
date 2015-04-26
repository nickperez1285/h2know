class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.integer "user_id"
    	t.string "name"
    	t.string "content"
    	t.integer "votes", :default => '0' 
      t.timestamps 
    end
    add_index :posts, ["user_id"]
  end
end
