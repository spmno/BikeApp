class CreateDealers < ActiveRecord::Migration
  def change
    create_table :dealers do |t|
      t.string :name
      t.string :address
      t.text :summary
      t.integer :bike_id

      t.timestamps
    end
  end
end
