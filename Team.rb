class Team



  attr_accessor :name, :coach
  attr_reader :players, :points


  def initialize(name)
    @name = name
    @coach = ""
    @players = []
    @points = 0
  end

  #replacing the get_'s with the attr_reader above
  # def get_name
  #   return @name
  # end
  #
  # def get_coach
  #   return @coach
  # end
  #
  # def get_players
  #   return @players
  # end

  # def new_coach(new_coach)
  #   @coach = new_coach
  # end

  # add a single player
  def add_player(new_player)
    @players << new_player
  end

  # add an array of players
  def add_players(new_players)
    @players += new_players
  end

  def has_player(player_to_check)
    return @players.include?(player_to_check)
  end

  def game_result(result)
    @points += 1 if result.downcase == "win"
  end
  
end
