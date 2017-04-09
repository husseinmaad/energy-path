class Log < ActiveRecord::Migration[5.0]
  def change
  	  create_table :logs do |t|
      t.string :duration
      t.string :page
      t.integer :user_id
      
      t.timestamps
    	end
  end
end
