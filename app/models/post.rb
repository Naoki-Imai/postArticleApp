class Post < ApplicationRecord
  belongs_to :menu, optional: true
end
