class CreateCmsComponents < ActiveRecord::Migration
  def self.up
    create_table :cms_components do |t|
      t.string :name
      t.text :allow_sites
      t.text :allow_roles
      t.text :url_config_path
      t.text :admin_menus

      t.timestamps
    end
  end

  def self.down
    drop_table :cms_components
  end
end
