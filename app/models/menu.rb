class Menu < ApplicationRecord
  belongs_to :post, optional: true, dependent: :destroy
  attachment :image
end
