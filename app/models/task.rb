class Task < ApplicationRecord
  belongs_to :assignment
  monetize :price_cents

  validates :name, presence: true

  after_create_commit { broadcast_append_to "tasks" }
end
