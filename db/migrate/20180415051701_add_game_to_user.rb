class AddGameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :game, :string
  end
end
