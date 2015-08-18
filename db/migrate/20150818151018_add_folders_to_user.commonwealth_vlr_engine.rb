# This migration comes from commonwealth_vlr_engine (originally 20130628143427)
class AddFoldersToUser < ActiveRecord::Migration
  def self.up
    create_table :bpluser_folders do |t|
      t.string :title
      t.integer :user_id, :null=>false
      t.string :description
      t.timestamps
    end
  end

  def self.down
    drop_table :bpluser_folders
  end
end
