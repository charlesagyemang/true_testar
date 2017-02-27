class Test < ApplicationRecord
  belongs_to :testable, polymorphic: true

  before_save do
	    self.requirements.gsub!(/[\[\]\"]/, "") if attribute_present?("requirements")
      self.location.gsub!(/[\[\]\"]/, "") if attribute_present?("location")
	end
end
