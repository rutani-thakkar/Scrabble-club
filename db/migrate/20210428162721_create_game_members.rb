class CreateGameMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :game_members do |t|
      t.references :game, null: false, foreign_key: true
      t.references :member, null: false, foreign_key: true
      t.numeric :score
      t.boolean :is_winner

      t.timestamps
    end
  end
end
