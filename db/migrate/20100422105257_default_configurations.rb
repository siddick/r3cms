class DefaultConfigurations < ActiveRecord::Migration
  def self.up
    CmsConfiguration.create! :name => "system",
      :config => { :default_site => "blog" }
  end

  def self.down
    CmsConfiguration.find_by_name( "system" ).destroy!
  end
end
