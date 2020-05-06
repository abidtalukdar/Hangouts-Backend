class CreateMeetups < ActiveRecord::Migration[6.0]
  def change
    create_table :meetups do |t|
      t.string :location_name
      t.string :location_address
      t.string :display_phone
      t.date :date
      t.time :time
      t.string :image
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end
