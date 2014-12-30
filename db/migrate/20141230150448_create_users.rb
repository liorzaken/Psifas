class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :userName
      t.string :password
      t.string :fullName
      t.boolean :manager

      t.timestamps null: false
    end
  end
end
