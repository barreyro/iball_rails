class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.references  :friendee
      t.references  :friend
      t.string      :status

      t.timestamps
    end
  end
end