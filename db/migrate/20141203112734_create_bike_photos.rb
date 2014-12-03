class CreateBikePhotos < ActiveRecord::Migration
  def change
    create_table :bike_photos do |t|
      t.integer :bike_id
      t.string :photo

      t.timestamps
    end
  end
end
