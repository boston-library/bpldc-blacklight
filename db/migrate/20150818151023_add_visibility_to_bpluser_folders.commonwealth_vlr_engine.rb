# This migration comes from commonwealth_vlr_engine (originally 20140124193815)
class AddVisibilityToBpluserFolders < ActiveRecord::Migration
  def change
    add_column :bpluser_folders, :visibility, :string
  end
end
