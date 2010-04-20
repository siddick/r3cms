class CreateCmsConfigurations < ActiveRecord::Migration
  def self.up
    create_table :cms_configurations do |t|
      t.string :name
      t.text :config

      t.timestamps
    end
  end

  def self.down
    drop_table :cms_configurations
  end
end
