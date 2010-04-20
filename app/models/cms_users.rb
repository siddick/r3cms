class CmsUsers < ActiveRecord::Base
  validates_uniqueness_of :username
  validates_presence_of   :name, :username, :password, :email, :allow_sites, :roles, :config

  serialize :allow_sites
  serialize :roles
  serialize :config
end
