class Vehicle < ApplicationRecord
  belongs_to :customer
  has_many :assignments, dependent: :destroy

  validates :brand, :plate, presence: true

  after_create_commit { broadcast_append_to "vehicles" }
end
