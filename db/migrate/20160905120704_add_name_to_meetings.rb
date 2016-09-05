class AddNameToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :name, :integer
  end
end
