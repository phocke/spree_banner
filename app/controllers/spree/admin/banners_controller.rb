class Spree::Admin::BannersController < Spree::Admin::ResourceController

  def index
    @banners = Spree::Banner.all
  end
end
