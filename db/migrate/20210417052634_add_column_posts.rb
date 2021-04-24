class AddColumnPosts < ActiveRecord::Migration[6.1]
  def up
    change_column :posts, :menu_id, :integer
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
