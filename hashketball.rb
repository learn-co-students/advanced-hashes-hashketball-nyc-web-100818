# Write your code here!
require "pry"

def game_hash

  game_hash =
  {
    :home => {
              :team_name => "Brooklyn Nets",
              :colors => ["Black", "White"],
              :players =>
              {
                "Alan Anderson" => {:number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1},
                "Reggie Evans" => {:number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},
                "Brook Lopez" => {:number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},
                "Mason Plumlee" => {:number => 1, :shoe => 19, :points => 26, :rebounds => 12, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},
                "Jason Terry" => {:number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}
              }
            },
    :away => {
              :team_name => "Charlotte Hornets",
              :colors => ["Turquoise", "Purple"],
              :players =>
              {
                "Jeff Adrien" => {:number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2},
                "Bismak Biyombo" => {:number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 7, :blocks => 15, :slam_dunks => 10},
                "DeSagna Diop" => {:number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},
                "Ben Gordon" => {:number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},
                "Brendan Haywood" => {:number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 22, :blocks => 5, :slam_dunks => 12}
              }
            }
  }
end

def teams
  game_hash.values # returns everything after :home and :away
end

def players # merge lets us grab all players easily from both sides
  game_hash[:home][:players].merge(game_hash[:away][:players])
end

def team_data
  game_hash[:home].merge(game_hash[:away])
end

def num_points_scored(name)
  players[name][:points] # :points is the key for the value of how many points a guy scored
end

def shoe_size(name)
  players[name][:shoe]
end

def team_colors(team)
  game_hash.each do |location, team_data|

      team_data.each do |attribute, data|
        if team == data
          return game_hash[location][:colors]
        end
      end
  end
end

def team_names

  teams = []

  game_hash.each do |location, team_data|
      teams << game_hash[location][:team_name]
  end
  teams
end

# alternative:
# array = []
# home_string = game_hash[:home][:team_name] # "Brooklyn Nets"
# away_string = game_hash[:away][:team_name] # "Charlotte Hornets"
#
# array << home_string
# array << away_string

def player_numbers(team_name)
  array = []
  game_hash.collect do |location, team_hash|
    if team_name == team_hash[:team_name]
      team_hash[:players].collect do |player_name, stats_hash| # .each works too
        array << stats_hash[:number]
      end
    end
  end
  array
end

def player_stats(name)
  # binding.pry
  players[name]
end

def big_shoe_rebounds
  biggest_shoe_size = 0
  big_rebounds = 0

  game_hash.each do |location, team_hash|
    team_hash[:players].each do |player_name, stats_hash|
      if stats_hash[:shoe] > biggest_shoe_size
        biggest_shoe_size = stats_hash[:shoe]
        big_rebounds = stats_hash[:rebounds]
      end
    end
  end
  big_rebounds
end

# def good_practices
#   game_hash.each do |location, team_hash|
#     #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
#     binding.pry
#       team_hash.each do |player_name, stats_hash|
#         #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
        # binding.pry
#
#         #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
#         data.each do |data_item|
#           # binding.pry
#       end
#     end
#   end
# end
# good_practices
