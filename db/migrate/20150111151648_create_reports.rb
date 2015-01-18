class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.datetime :date
      t.string :patientId
      t.string :reporter
      t.text :background
      t.text :description
      t.text :conclusion
      t.datetime :nextDate

      t.timestamps null: false
    end
  end
end
