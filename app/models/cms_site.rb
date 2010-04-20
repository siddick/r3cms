class CmsSite < ActiveRecord::Base
  belongs_to :cms_template
  
  validates_uniqueness_of :name
  validates_presence_of   :name, :allow_roles, :config

  serialize :config
  serialize :allow_roles

end
