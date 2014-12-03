class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :photo
      t.text :summary

      t.timestamps
    end
  end
end
