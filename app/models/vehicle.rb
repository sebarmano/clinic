class Vehicle < ApplicationRecord
  belongs_to :customer

  after_create_commit { broadcast_append_to "vehicles" }
end
