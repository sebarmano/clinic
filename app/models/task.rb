class Task < ApplicationRecord
  belongs_to :assignment

  validates :name, presence: true

  after_create_commit { broadcast_append_to "tasks" }
end
