class Payment < ApplicationRecord
  belongs_to :assignment

  enum method: { credit_card: 0, cash: 1 }
end
