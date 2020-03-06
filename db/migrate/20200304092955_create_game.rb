class CreateGame < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :description
      t.boolean :played, default: false

      t.timestamps
    end
  end
end
