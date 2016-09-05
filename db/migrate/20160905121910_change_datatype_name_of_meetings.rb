class ChangeDatatypeNameOfMeetings < ActiveRecord::Migration
  def change
    change_column :meetings, :name, :string
  end
end
