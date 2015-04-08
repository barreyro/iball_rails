class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :user_id
      t.string :title
      t.date :date
      t.string :city
      t.string :state
      t.string :zip
      t.string :address

      t.timestamps null: false
    end
  end
end
