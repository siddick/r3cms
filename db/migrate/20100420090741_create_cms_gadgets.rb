class CreateCmsGadgets < ActiveRecord::Migration
  def self.up
    create_table :cms_gadgets do |t|
      t.string :name
      t.text :allow_sites
      t.text :view_path
      t.text :config_path

      t.timestamps
    end
  end

  def self.down
    drop_table :cms_gadgets
  end
end
