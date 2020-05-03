class CreateMeetups < ActiveRecord::Migration[6.0]
  def change
    create_table :meetups do |t|
      t.string :location
      t.date :date
      t.time :time
      t.string :image

      t.timestamps
    end
  end
end
