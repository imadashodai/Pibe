class AddTeamIdToFormations < ActiveRecord::Migration
  def change
    add_reference :formations, :team_id, index: true, foreign_key: true
  end
end
