class Game < ActiveRecord::Base
  has_many   :comments

  def self.search(date, state)
    @found_games = []
    @games = Game.all
    @games.each do |event|
      if event.date == date && event.state == state
        @found_games << event
      end
    end
  end
end
