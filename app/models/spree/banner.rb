class Spree::Banner < ActiveRecord::Base
  attr_accessible :link, :name, :visible
  
  has_many :images, :as => :viewable, :order => :position, :dependent => :destroy
end
