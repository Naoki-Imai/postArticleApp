class Menu < ApplicationRecord
  belongs_to :post, optional: true, dependent: :destroy
  attachment :image
  validates :word, presence: { message: "を入力してください"}
end
