class DefaultUsers < ActiveRecord::Migration
  def self.up
    CmsUser.create! :name => "Admin", :username => "admin", 
      :password => Digest::MD5.hexdigest("admin"), :email => "xxx@yyy.com",
      :enable => true, :roles => [ "all" ], :allow_sites => [ "all" ], :config => {}
    CmsUser.create! :name => "Guest", :username => "guest", :email => "xxx@yyy.com",
      :enable => false, :roles => [ 'guest' ], :allow_sites => [ "blog" ], :config => {} 
  end

  def self.down
    CmsUser.find_by_username( "guest" ).destroy
    CmsUser.find_by_username( "admin" ).destroy
  end
end
