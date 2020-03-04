class CreateTournament < ActiveRecord::Migration[6.0]
  def change
    create_table :tournaments do |t|
      t.string :description, null: false

      t.timestamps
    end
  end
end
