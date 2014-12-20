class AddBrandIdToBike < ActiveRecord::Migration
  def change
    add_column :bikes, :brand_id, :integer
  end
end
