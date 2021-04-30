class Assignment < ApplicationRecord
  belongs_to :vehicle
  has_many :tasks, dependent: :destroy
  has_many :payments, dependent: :destroy

  validates :description, presence: true

  after_create_commit { broadcast_append_to "assignments" }

  def total_price
    Money.new(tasks.sum(:price_cents), "ARS")
  end
end
