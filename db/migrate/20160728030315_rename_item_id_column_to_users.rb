class RenameItemIdColumnToUsers < ActiveRecord::Migration
  def change
    rename_column :users, :team_id_id, :team_id
  end
end
