class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :username
      t.string  :first_name
      t.string  :last_name
      t.string  :email
      t.string  :password_digest
      t.string  :city
      t.string  :state
      t.integer :age
      t.integer :games_total
      t.integer :games_won
      t.text    :bio

      t.timestamps null: false
    end
  end
end
