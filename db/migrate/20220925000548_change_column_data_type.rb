class ChangeColumnDataType < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :pass_word, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
