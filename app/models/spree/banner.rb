class Spree::Banner < ActiveRecord::Base
  attr_accessible :visible, :name, :link, :image

  validates_presence_of :image, :name, :link
  has_attached_file :image,
    :styles => { :normal => '590x170' },
    :default_style => :normal,
    :url => '/spree/banners/:id/:style/:basename.:extension',
    :path => ':rails_root/public/spree/banners/:id/:style/:basename.:extension',
    :default_url => '/assets/default_banner.png'

  include Spree::Core::S3Support
  supports_s3 :image

  scope :visible, where("image_file_name IS NOT NULL AND visible = true")

end
