class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :sightings, :date,  :datetime
  end
end
