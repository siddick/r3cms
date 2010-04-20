class CmsTemplate < ActiveRecord::Base
  validates_presence_of :name, :home_layout, :auth_layout, :default_layout 

  serialize :config 
end
