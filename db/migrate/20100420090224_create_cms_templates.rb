class CreateCmsTemplates < ActiveRecord::Migration
  def self.up
    create_table :cms_templates do |t|
      t.string :name
      t.string :home_layout
      t.string :auth_layout
      t.string :default_layout
      t.text :config

      t.timestamps
    end
  end

  def self.down
    drop_table :cms_templates
  end
end
