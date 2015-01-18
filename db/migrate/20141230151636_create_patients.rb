class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :patientId
      t.datetime :birthDate
      t.string :fullName
      t.string :address
      
    end
  end
end
