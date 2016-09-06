class AddTeamIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :team_ids, index: true, foreign_key: true
  end
end
