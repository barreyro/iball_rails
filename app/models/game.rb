class Game < ActiveRecord::Base
  belongs_to :creator, foreign_key: :users, class_name: "User"
end
