class Sale < ApplicationRecord
  has_one :product
  # ,dependent: :destory
end
