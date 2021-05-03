class Post < ApplicationRecord
  belongs_to :menu, optional: true
  validates :title, presence: {message: "を入力してください"}
  validates :link_url, presence: {message: "を入力してください"}
  validates :menu_id, presence: { message: "を入力してください"}
end
