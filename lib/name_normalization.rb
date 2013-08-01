module NameNormalization
  
  extend ActiveSupport::Concern
  
  included do
    before_validation :normalize_name
  end
  
  def normalize_name
    self.name = name.titleize if name_changed?
  end
  
end