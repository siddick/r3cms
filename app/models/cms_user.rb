class CmsUser < ActiveRecord::Base
  validates_uniqueness_of :username
  validates_presence_of   :name, :username, :email, :allow_sites, :roles

  serialize :allow_sites, Array
  serialize :roles, Array
  serialize :config, Hash

  def self.authenticate( user )
    first( :conditions => { :enable => true,
          :username => user[:username],
          :password => Digest::MD5.hexdigest( user[:password] ) } )
  end

  def signin?
    enable
  end
end
