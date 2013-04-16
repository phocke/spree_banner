# Spree::Core::Engine.routes.draw do
#   namespace :spree do
#     namespace :admin do
#       resources :banners
#     end
#   end
# end

Spree::Core::Engine.routes.prepend do

  namespace :admin do
    resources :banners
  end

end
