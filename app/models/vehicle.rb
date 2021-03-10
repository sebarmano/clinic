class Vehicle < ApplicationRecord
  belongs_to :customer
  validates :brand, :plate, presence: true

  after_create_commit { broadcast_append_to "vehicles" }
end
