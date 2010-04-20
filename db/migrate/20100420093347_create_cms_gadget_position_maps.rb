class CreateCmsGadgetPositionMaps < ActiveRecord::Migration
  def self.up
    create_table :cms_gadget_position_maps do |t|
      t.integer :cms_site_id
      t.integer :cms_gadget_id
      t.string :position
      t.string :description
      t.text :allow_roles
      t.text :config

      t.timestamps
    end
  end

  def self.down
    drop_table :cms_gadget_position_maps
  end
end
