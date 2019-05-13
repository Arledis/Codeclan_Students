class SportTeam
  attr_reader :team_name, :players, :coach
  attr_writer :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

def team_name
  return @team_name
end

def players
  return @players
end

def coach
  return @coach
end
def set_coach(name)
  @coach = name
end

def add_player(player)
  @players = players.push(player)
end

def find_player(player)
  if @players.include?(player)
    return true
  else
    return false
  end
end

def add_points(point)
  @points += point
end
#
# # def team_win_or_lose
# #   if (@points == 0)
# #     return 'lose'
# #   elsif (@points >= 3)
# #       return 'win'
# #     end
# #   end
# # end
#
def team_game_results(results)
  results = 0
  @points == 0 if results = 'lose'
  @points += 2 if results = 'win'
end


end

# return @points += 2 if result == 'win'
