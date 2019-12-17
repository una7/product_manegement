class Product < ApplicationRecord
  belongs_to :user
  belongs_to :sale, optional: true
end
