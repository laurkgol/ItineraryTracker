class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :date
      t.string :title
      t.string :description
      t.string :photo_url

      t.timestamps
    end
  end
end
