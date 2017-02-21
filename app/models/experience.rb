class Experience < ApplicationRecord
  belongs_to :experienceable, polymorphic: true
end
