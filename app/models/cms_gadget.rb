class CmsGadget < ActiveRecord::Base
  validates_presence_of :name, :allow_sites, :view_path, :config_path 

  serialize :allow_sites
end
