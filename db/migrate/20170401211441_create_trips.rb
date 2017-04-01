class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :location
      t.string :time_span
      t.string :photo_url

      t.timestamps
    end
  end
end
