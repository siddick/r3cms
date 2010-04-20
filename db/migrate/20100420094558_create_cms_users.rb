class CreateCmsUsers < ActiveRecord::Migration
  def self.up
    create_table :cms_users do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :email
      t.string :open_id_url
      t.string :enable_key
      t.boolean :enable
      t.text :allow_sites
      t.text :roles
      t.text :config

      t.timestamps
    end
  end

  def self.down
    drop_table :cms_users
  end
end
