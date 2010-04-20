class CmsGadgetPositionMap < ActiveRecord::Base
  belongs_to :cms_site
  belongs_to :cms_gadget

  validates_presence_of :cms_site_id, :cms_gadget_id, :position,
    :description, :allow_roles, :config

  serialize :allow_roles
  serialize :config

end
