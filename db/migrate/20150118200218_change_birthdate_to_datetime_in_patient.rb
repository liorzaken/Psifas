class ChangeBirthdateToDatetimeInPatient < ActiveRecord::Migration
  def up
    change_column :patients, :birthDate, :datetime
  end

  def down
    change_column :patients, :birthDate, :string
  end
end
