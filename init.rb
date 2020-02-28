require 'redmine'
require 'redmine_warehouse/redmine_warehouse'

Redmine::Plugin.register :redmine_warehouse do
  name 'Redmine Warehouse plugin for IKT'
  author 'Andrey Shubarev'
  description 'Redmine Warehouse plugin for IKT'
  version '0.0.1'
  url 'https://github.com/plachem/redmine_warehouse'
  author_url 'https://github.com/plachem/redmine_warehouse'

  project_module :warehouse do
    permission :add_products, :products => [:new, :create]
    permission :view_products, :products => [:index, :show]
  end
  menu :project_menu, :products, { :controller => 'products', :action => 'index' }, :caption => :warehouse_title, :param => :project_id
end
