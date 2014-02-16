class ChangeLastNameColumn < ActiveRecord::Migration
  def change
    rename_column :users, :lname, :last_name
  end
end
