class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.integer :high_score, :null => false, :default => 0
      t.integer :game_count, :null => false, :default => 0
      t.integer :drink_count, :null => false, :default => 0
      t.timestamps
    end
  end
end
