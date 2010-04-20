class CmsConfiguration < ActiveRecord::Base
  # === Validation
  validates_presence_of :name, :config

  # === Serialize
  serialize :config
  
end
