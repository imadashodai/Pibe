class CreateFormations < ActiveRecord::Migration
  def change
    create_table :formations do |t|
      t.references :player1, index: true, foreign_key: true
      t.references :player2, index: true, foreign_key: true
      t.references :player3, index: true, foreign_key: true
      t.references :player4, index: true, foreign_key: true
      t.references :player5, index: true, foreign_key: true
      t.references :player6, index: true, foreign_key: true
      t.references :player7, index: true, foreign_key: true
      t.references :player8, index: true, foreign_key: true
      t.references :player9, index: true, foreign_key: true
      t.references :player10, index: true, foreign_key: true
      t.references :player11, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
