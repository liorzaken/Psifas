class FixDb < ActiveRecord::Migration
  def change
    rename_column :users, :email, :userName
    add_column :users, :admin, :boolean
    
  end
end
