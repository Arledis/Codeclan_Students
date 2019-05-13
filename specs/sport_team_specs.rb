require('minitest/autorun')
require('minitest/rg')
require_relative('../sport_team.rb')

class TestSportTeam < Minitest::Test
def setup
  @team = SportTeam.new('F.C Barcelona', ['Lionel Messi', 'Luis Suarez', 'Arturo Vidal'], 'Ernesto Vidal')

end
def test_team_name
  assert_equal('F.C Barcelona', @team.team_name())
end

def test_players
  assert_equal(['Lionel Messi', 'Luis Suarez', 'Arturo Vidal'], @team.players())
end

def test_coach
  assert_equal('Ernesto Vidal', @team.coach())
end

def test_set_coach
  @team.coach = 'Josep Maria Bartomeu'
  assert_equal('Josep Maria Bartomeu', @team.coach)
end

def test_add_player
  @team.add_player('Orlando Mendoza')
  assert_equal(['Lionel Messi', 'Luis Suarez', 'Arturo Vidal', 'Orlando Mendoza'], @team.players)
end

def test_find_player
  assert_equal(true, @team.find_player('Lionel Messi'))
end

# Create a method that takes in whether the team has won or lost and updates the points property for a win.

def test_add_points
assert_equal(3, @team.add_points(3))
end

def team_game_results(results)
  assert_equal('lose', @team.points)
end

end
