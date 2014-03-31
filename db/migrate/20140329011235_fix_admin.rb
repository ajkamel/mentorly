class FixAdmin < ActiveRecord::Migration
  def change
    rename_column :users, :admin?, :admin
    rename_column :users, :mentor?, :mentor
  end
end
