class Assignment < ApplicationRecord
  belongs_to :vehicle
  validates :description, presence: true
end
