class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :place
      t.date :event_date

      t.timestamps
    end
  end
end
