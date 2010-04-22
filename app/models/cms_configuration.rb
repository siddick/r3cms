class CmsConfiguration < ActiveRecord::Base
  # === Validation
  validates_uniqueness_of :name
  validates_presence_of   :name, :config

  # === Serialize
  serialize :config
  
end
