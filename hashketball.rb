# require 'pry'
 # players whose names (as strings) are the keys to a hash containing their stats


def game_hash
  game = {
      :home => {
        :team_name => "Brooklyn Nets",
        :colors => ["Black", "White"], # must be strings.
        :players => {"Alan Anderson" => {number: 0, shoe: 16, points: 22, rebounds: 12, assists: 12, steals: 3, blocks: 1, slam_dunks: 1},
                      "Reggie Evans" => {number: 30, shoe: 14, points: 12, rebounds: 12, assists: 12, steals: 12, blocks: 12, slam_dunks: 7},
                      "Brook Lopez" => {number: 11, shoe: 17, points: 17, rebounds: 19, assists: 10, steals: 3, blocks: 1, slam_dunks: 15},
                      "Mason Plumlee" => {number: 1, shoe: 19, points: 26, rebounds: 12, assists: 6, steals: 3, blocks: 8, slam_dunks: 5},
                      "Jason Terry" => {number: 31, shoe: 15, points: 19, rebounds: 2, assists: 2, steals: 4, blocks: 11, slam_dunks: 1}
                    }
      },
      :away => {
        :team_name => "Charlotte Hornets",
        :colors => ["Turquoise", "Purple"],
        :players => {"Jeff Adrien" => {number: 4, shoe: 18, points: 10, rebounds: 1, assists: 1, steals: 2, blocks: 7, slam_dunks: 2},
                    "Bismak Biyombo" => {number: 0, shoe: 16, points: 12, rebounds: 4, assists: 7, steals: 7, blocks: 15, slam_dunks: 10},
                  "DeSagna Diop" => {number: 2, shoe: 14, points: 24, rebounds: 12, assists: 12, steals: 4, blocks: 5, slam_dunks: 5},
                "Ben Gordon" => {number: 8, shoe: 15, points: 33, rebounds: 3, assists: 2, steals: 1, blocks: 1, slam_dunks: 0},
              "Brendan Haywood" => {number: 33, shoe: 15, points: 6, rebounds: 12, assists: 12, steals: 22, blocks: 5, slam_dunks: 12},
            }
      }
    }
end


#    knows the number of points scored by each player
def num_points_scored(player)
  score = ""
  game_hash[:home][:players].each do |player_name, stats|  # hash iteration pass 2 values!!
    if player_name == player
      score = game_hash[:home][:players][player_name][:points]
    end
  end

  game_hash[:away][:players].each do |player_name, stats|
    if player_name == player
      score = game_hash[:away][:players][player_name][:points]
    end
  end
  score
end

#    knows the shoe size of each player
def shoe_size(player)
  shoe_size = ""

  game_hash[:home][:players].each do |player_name, stats|
    if player_name == player
      shoe_size = game_hash[:home][:players][player_name][:shoe]
    end
  end

  game_hash[:away][:players].each do |player_name, stats|
    if player_name == player
      shoe_size = game_hash[:away][:players][player_name][:shoe]
    end
  end
  shoe_size
end


#    knows the Brooklyn Nets colors are Black and White
def team_colors(team)

  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if data == team
       return game_hash[location][:colors] # need return, otherwise iternation will return the whole hash.
      end
    end
  end
end

#    returns all the team names

def team_names
  team_names = []
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :team_name
        team_names << data
      end
    end
  end
  team_names
end

#    returns the player jersey numbers

def player_numbers(team)      # understand the questions wrong. try to pull our a simgle player's jersey.

  jersey_numbers = []

  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
# binding.pry
      if data == team       # do not use attribute. the data is the value of the team name.

          game_hash[location][:players].each do |player_name, player_data|
              jersey_numbers << game_hash[location][:players][player_name][:number]
          end
      end
    end
  end

  jersey_numbers
end

#    returns all stats for a given player
def player_stats(player)

  game_hash[:home][:players].each do |player_name, stats|
    if player_name == player
      return stats
    end
  end

  game_hash[:away][:players].each do |player_name, stats|
    if player_name == player
      return stats
    end
  end
end

#    returns the number of rebounds of the player with the biggest shoe size (FAILED - 10)
def   big_shoe_rebounds
  shoe_size_array = []

  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |player_name, stats|
          shoe_size_array << game_hash[location][attribute][player_name][:shoe]
        end
      end
    end
  end
  big_shoe_size = shoe_size_array.sort.last

  big_shoe_rebounds = 0

  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |player_name, stats|
          if game_hash[location][attribute][player_name][:shoe] == big_shoe_size
            big_shoe_rebounds = game_hash[location][attribute][player_name][:rebounds]
          end
        end
      end
    end
  end
  big_shoe_rebounds
end
