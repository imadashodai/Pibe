class RenameTeamNameColumnToTeams < ActiveRecord::Migration
  def change
    rename_column :teams, :team_name, :name
  end
end
