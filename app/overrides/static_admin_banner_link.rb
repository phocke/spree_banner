Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "static_admin_banner_link",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:banners, :icon => 'icon-file') %>",
                     :disabled => false)
