class RenameNameColumnToTeams < ActiveRecord::Migration
  def change
    rename_column :teams, :name, :team_name
  end
end
