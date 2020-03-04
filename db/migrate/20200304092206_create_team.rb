class CreateTeam < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.integer :coordinator_id, null: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
