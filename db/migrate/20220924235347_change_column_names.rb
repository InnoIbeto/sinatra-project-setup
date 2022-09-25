class ChangeColumnNames < ActiveRecord::Migration[7.0]
  def change

    rename_column :users, :first_name, :email
    rename_column :users, :last_name, :user_name
    rename_column :users, :age, :pass_word
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
