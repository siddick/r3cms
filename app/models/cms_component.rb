class CmsComponent < ActiveRecord::Base
  validates_presence_of :name, :allow_sites, :allow_roles, :url_config_path, :admin_menus

  serialize :allow_sites
  serialize :allow_roles
  serialize :admin_menus

end
