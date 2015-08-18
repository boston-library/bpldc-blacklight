# This migration comes from commonwealth_vlr_engine (originally 20150527000001)
class FixUserUniqueIndex < ActiveRecord::Migration
  def change
    remove_index :users, :email
    add_index :users, [:provider, :uid], :unique => true
    add_index :users, :email

  end
end
