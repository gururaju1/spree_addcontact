class Contacts < ActiveRecord::Migration
  def change
     create_table :spree_contacts  do |t|
      t.string :name
      t.date :birthday
      t.string :sex
      t.string :email
      t.string :address
      t.string :relationship
      t.timestamps null: false
    end
  end
end
