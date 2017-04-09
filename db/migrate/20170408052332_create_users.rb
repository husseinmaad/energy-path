class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :password_digest
      t.integer :referer_id
      t.string :reference_code
      t.string :user_type
      t.string :email_link
      
      t.timestamps
    end
  end
end
