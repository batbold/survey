class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
	  t.string  "name",    limit: 40
	  t.string  "last_name", limit: 40
	  t.string  "email",   limit: 40
	  t.integer "user_id",     limit: 4
      t.timestamps null: false
    end
  end

  def down
  	drop_table :contacts
  end
end
