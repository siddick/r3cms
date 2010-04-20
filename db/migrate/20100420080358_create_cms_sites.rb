class CreateCmsSites < ActiveRecord::Migration
  def self.up
    create_table :cms_sites do |t|
      t.string :name
      t.integer :cms_template_id
      t.text :allow_roles
      t.text :config

      t.timestamps
    end
  end

  def self.down
    drop_table :cms_sites
  end
end
