class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :surname, null: false
      t.string :email, null: false, unique: true
      t.string :password_digest

      t.timestamps
    end
  end
end
