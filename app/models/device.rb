class Device < ApplicationRecord
  belongs_to :deviceable, polymorphic: true
end
