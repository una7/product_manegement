class Product < ApplicationRecord
  belongs_to :sale, optional: true
end
