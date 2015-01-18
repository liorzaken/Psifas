class AddNextDateToReport < ActiveRecord::Migration
  def change
    add_column :reports, :nextDate, :datetime
  end
end
