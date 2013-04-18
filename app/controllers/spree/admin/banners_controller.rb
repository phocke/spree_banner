class Spree::Admin::BannersController < Spree::Admin::ResourceController

  def index
    @banners = Spree::Banner.all
  end

  def new
    @banner = Spree::Banner.new
  end


end
