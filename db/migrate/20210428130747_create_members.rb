class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.date :joining_date

      t.timestamps
    end
  end
end
