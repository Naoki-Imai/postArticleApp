class AddMenuCategoryReferences < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :menu, null: false, foreign_key: true
  end
end
