require('minitest/autorun')
require('minitest/rg')
require_relative('../Team.rb')

class TestTeam < Minitest::Test

  def test_get_team_name
    the_team = Team.new("The Clanners")
    # assert_equal("The Clanners", the_team.get_name)
    assert_equal("The Clanners", the_team.name)
  end

  def test_get_coach__not_set
    the_team = Team.new("The Clanners")
    # assert_equal("", the_team.get_coach)
        assert_equal("", the_team.coach)
  end

  def test_get_players__empty
    the_team = Team.new("The Clanners")
    # assert_equal([], the_team.get_players)
    assert_equal([], the_team.players)
  end

  def test_get_coach__set
    the_team = Team.new("The Clanners")
    # the_team.new_coach("Jerry McGuire")
    # assert_equal("Jerry McGuire", the_team.get_coach)
    the_team.coach = "Jerry McGuire"
    assert_equal("Jerry McGuire", the_team.coach)
  end

  def test_get_players__set1
    the_team = Team.new("The Clanners")
    the_team.add_player("Ian")
    assert_equal(["Ian"], the_team.players)
  end

  def test_get_players__set2
    the_team = Team.new("The Clanners")
    the_team.add_player("Ian")
    the_team.add_player("Kayleigh")
    the_team.add_player("Valerie")
    the_team.add_player("Kyle")
    assert_equal(["Ian", "Kayleigh", "Valerie", "Kyle"], the_team.players)
  end

  def test_get_players__set3
    the_team = Team.new("The Clanners")
    players = ["Ian", "Kayleigh", "Valerie", "Kyle"]
    the_team.add_players(players)
    assert_equal(["Ian", "Kayleigh", "Valerie", "Kyle"], the_team.players)
  end

  def test_team_has_player__found
    the_team = Team.new("The Clanners")
    players = ["Ian", "Kayleigh", "Valerie", "Kyle"]
    the_team.add_players(players)
    assert(the_team.has_player("Kyle"))
  end

  def test_team_has_player__not_found
    the_team = Team.new("The Clanners")
    players = ["Ian", "Kayleigh", "Valerie", "Kyle"]
    the_team.add_players(players)
    assert(!the_team.has_player("Billy Bob"))
  end

  def test_get_points_0
    the_team = Team.new("The Clanners")
    assert_equal(0, the_team.points)
  end

  def test_game_result
    the_team = Team.new("The Clanners")
    the_team.game_result("win")
    assert_equal(1,the_team.points)
  end

end
