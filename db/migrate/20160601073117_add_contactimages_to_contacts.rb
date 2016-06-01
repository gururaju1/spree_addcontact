class AddContactimagesToContacts < ActiveRecord::Migration
 def self.up
    change_table :spree_contacts do |t|
      t.attachment :contactimage
    end
  end

  def self.down
    drop_attached_file :spree_contacts, :image
  end
end
