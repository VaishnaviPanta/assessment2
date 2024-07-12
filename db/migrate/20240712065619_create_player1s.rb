class CreatePlayer1s < ActiveRecord::Migration[7.1]
  def change
    create_table :player1s do |t|
      t.string :name
      t.integer :age
      t.string :position

      t.timestamps
    end
  end
end
