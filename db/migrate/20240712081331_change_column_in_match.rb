class ChangeColumnInMatch < ActiveRecord::Migration[7.1]
  def change
    change_column :matches, :date, :date
    end
end
