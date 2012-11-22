class AddPasswordConfirmationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_confirmation, :string
    remove_column :users, :password_confirm
  end
end
