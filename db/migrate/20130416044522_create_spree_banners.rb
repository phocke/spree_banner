class CreateSpreeBanners < ActiveRecord::Migration
  def change
    create_table :spree_banners do |t|
      t.string :link
      t.boolean :visible
      t.string :name

      t.timestamps
    end
  end
end
