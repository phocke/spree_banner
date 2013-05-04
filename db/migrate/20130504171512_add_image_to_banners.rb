class AddImageToBanners < ActiveRecord::Migration
  def up
    add_column :spree_banners, :image_file_name,    :string
    add_column :spree_banners, :image_content_type, :string
    add_column :spree_banners, :image_file_size,    :integer
    add_column :spree_banners, :image_updated_at,   :datetime
  end

  def down
    remove_column :spree_banners, :image_file_name
    remove_column :spree_banners, :image_content_type
    remove_column :spree_banners, :image_file_size
    remove_column :spree_banners, :image_updated_at
  end
end
