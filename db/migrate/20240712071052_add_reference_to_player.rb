class AddReferenceToPlayer < ActiveRecord::Migration[7.1]
  def change
    add_reference :player1s, :team1s, foreign_key:true
  end
end
