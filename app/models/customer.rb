class Customer < ApplicationRecord
  validates :first_name, :last_name, :phone, presence: true
end
