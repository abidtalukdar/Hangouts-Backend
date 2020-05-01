class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :current_address
      t.string :default_address
      t.boolean :default_location_preference

      t.timestamps
    end
  end
end
