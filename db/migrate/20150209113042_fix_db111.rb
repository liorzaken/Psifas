class FixDb111 < ActiveRecord::Migration
  def change
    add_column :users, :fullName, :string
  end
end
