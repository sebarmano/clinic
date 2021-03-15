class Assignment < ApplicationRecord
  belongs_to :vehicle
  has_many :tasks, dependent: :destroy

  validates :description, presence: true

  after_create_commit { broadcast_append_to "assignments" }
end
