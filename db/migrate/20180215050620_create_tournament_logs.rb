class CreateTournamentLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :tournament_logs do |t|
      t.references :player, foreign_key: true
      t.integer :points

      t.timestamps
    end
  end
end
