class Test < ApplicationRecord
  belongs_to :testable, polymorphic: true

  #validates :title,             presence: true
  #validates :requirements,      presence: true
  # validates :instructions,      presence: true
  # validates :start_date,        presence: true
  # validates :end_date,          presence: true
  # validates :review_date,       presence: true
  # validates :location,          presence: true
  # validates :number_of_testers, presence: true



  before_save do
	    self.requirements.gsub!(/[\[\]\"]/, "") if attribute_present?("requirements")
      self.location.gsub!(/[\[\]\"]/, "") if attribute_present?("location")
	end

end
