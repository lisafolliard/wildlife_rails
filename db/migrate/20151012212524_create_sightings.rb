class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|

      t.column :date, :timestamp
      t.column :longitude, :integer
      t.column :latitude, :integer
      t.column :species_id, :integer
      t.column :image, :string

      t.timestamps
    end
  end
end
