class RemoveTeamIdFromFormations < ActiveRecord::Migration
  def change
    remove_column :formations, :team_id, :integer
  end
end
