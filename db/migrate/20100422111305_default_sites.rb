class DefaultSites < ActiveRecord::Migration
  def self.up
    CmsSite.create! :name => "admin",
      :allow_roles => [ "super_admin", "admin" ], 
      :config => {}

    CmsSite.create! :name => "blog",
      :allow_roles => [ "all" ],
      :config => {}
  end

  def self.down
    CmsSite.find_by_name( "blog" ).destroy
    CmsSite.find_by_name( "admin" ).destroy
  end
end
