class AddTeamIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :team_id, index: true, foreign_key: true
  end
end
