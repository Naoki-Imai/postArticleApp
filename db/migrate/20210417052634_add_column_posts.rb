class AddColumnPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :menu_id, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
