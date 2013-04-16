class Spree::Banner < ActiveRecord::Base
  attr_accessible :visible, :name, :link
  has_many :images, :as => :viewable, :order => :position, :dependent => :destroy

  scope :visible, where(:visible => true)
end
