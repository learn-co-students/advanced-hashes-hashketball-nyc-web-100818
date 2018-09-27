require 'pry'
def game_hash
hash = {
:home => {:team_name => "Brooklyn Nets", colors:["Black", "White"],
   :players => {"Alan Anderson" => {number: 0, shoe: 16, points: 22,
     rebounds: 12, assists: 12, steals: 3, blocks: 1, slam_dunks: 1},
     "Reggie Evans" => {number: 30, shoe: 14, points: 12,
       rebounds: 12, assists: 12, steals: 12, blocks: 12, slam_dunks: 7},
       "Brook Lopez" => {number: 11, shoe: 17, points: 17,
         rebounds: 19, assists: 10, steals: 3, blocks: 1, slam_dunks: 15},
         "Mason Plumlee" => {number: 1, shoe: 19, points: 26,
           rebounds: 12, assists: 6, steals: 3, blocks: 8, slam_dunks: 5},
           "Jason Terry" => {number: 31, shoe: 15, points: 19,
             rebounds: 2, assists: 2, steals: 4, blocks: 11, slam_dunks: 1}
           }},
:away => {
  team_name:"Charlotte Hornets", colors:["Turquoise", "Purple"],
   :players => {"Jeff Adrien" => {number: 4, shoe: 18, points: 10,
     rebounds: 1, assists: 1, steals: 2, blocks: 7, slam_dunks: 2},
     "Bismak Biyombo" => {number: 0, shoe: 16, points: 12,
       rebounds: 4, assists: 7, steals: 7, blocks: 15, slam_dunks: 10},
       "DeSagna Diop" => {number: 2, shoe: 14, points: 24,
         rebounds: 12, assists: 12, steals: 4, blocks: 5, slam_dunks: 5},
         "Ben Gordon" => {number: 8, shoe: 15, points: 33,
           rebounds: 3, assists: 2, steals: 1, blocks: 1, slam_dunks: 0},
           "Brendan Haywood" => {number: 33, shoe: 15, points: 6,
             rebounds: 12, assists: 12, steals: 22, blocks: 5, slam_dunks: 12}
             }}



}
end

def big_shoe_rebounds
counter = 0
rebounds = 0
player = ""
game_hash.each do |home_away, team_stats|
  players_array = team_stats[:players]
players_array.each do |name, stats|
  if stats[:shoe] > counter
    counter = stats[:shoe]
    rebounds = stats[:rebounds]
  end
end
end
rebounds
end

def player_stats(player)
game_hash.each do |home_away, team_stats|
  team_array = team_stats[:players]
  team_array.each do |every_player, player_stats|
    if every_player == player
      return player_stats
    end
  end
end
end


def player_numbers(team)
  array = []
  game_hash.each do |teams, team_info|
    team_name = team_info[:team_name]
    if team_name == team
      players_array = team_info[:players]
        players_array.each do |categories, value|
        array << value[:number]
    end
  end
end
array
end

def team_names
  array = []
  game_hash.each do |home_away, team_info|
    array << team_info[:team_name]
  end
  return array
end



def team_colors(team)
        game_hash.each do |home_away,team_info|
            if team_info[:team_name] == team
              return team_info[:colors]
            end
          end
end



def shoe_size(player)
game_hash.each do |key,value|
  players_array = value[:players]
    players_array.each do |players, stats|
     if players == player
       stats.each do |shoes,size|
         if shoes == :shoe
           return size

      end
     end
    end
 end
end
end


# def shoe_size(name)
#   answer = nil
#
#   game_hash.each do |team, details_hash|
#     players_array = details_hash[:players]
#     binding.pry
#       players_array.each do |player_details_hash|
#         if player_details_hash[:name] == name
#           answer = player_details_hash[:shoe]
#         end
#       end
#   end
#   answer
# end

# def game_hash
#   {
#   :home_team => {
#     :name => "Brooklyn Nets",
#     :colors => ["Black", "White"],
#     :players => [
#       {
#       :name => "Alan Anderson",
#       :number => 0,
#       :shoe => 16,
#       :points => 22,
#       :rebounds => 12,
#       :assists => 12,
#       :steals => 3,
#       :blocks => 1,
#       :slam_dunks => 1
#       },
#       {
#       :name => "Reggie Evans",
#       :number => 30,
#       :shoe => 14,
#       :points => 12,
#       :rebounds => 12,
#       :assists => 12,
#       :steals => 12,
#       :blocks => 12,
#       :slam_dunks => 7
#       },
#       {
#       :name => "Brook Lopez",
#       :number => 11,
#       :shoe => 17,
#       :points => 17,
#       :rebounds => 19,
#       :assists => 10,
#       :steals => 3,
#       :blocks => 1,
#       :slam_dunks => 15
#       },
#       {
#       :name => "Mason Plumlee",
#       :number => 1,
#       :shoe => 19,
#       :points => 26,
#       :rebounds => 12,
#       :assists => 6,
#       :steals => 3,
#       :blocks => 8,
#       :slam_dunks => 5
#       },
#       {
#       :name => "Jason Terry",
#       :number => 31,
#       :shoe => 15,
#       :points => 19,
#       :rebounds => 2,
#       :assists => 2,
#       :steals => 4,
#       :blocks => 11,
#       :slam_dunks => 1
#       }
#     ]
#   },
#   :away_team => {
#     :name => "Charlotte Hornets",
#     :colors => ["Turquoise", "Purple"],
#     :players => [
#       {
#       :name => "Jeff Adrien",
#       :number => 4,
#       :shoe => 18,
#       :points => 10,
#       :rebounds => 1,
#       :assists => 1,
#       :steals => 2,
#       :blocks => 7,
#       :slam_dunks => 2
#       },
#       {
#       :name => "Bismak Biyombo",
#       :number => 0,
#       :shoe => 16,
#       :points => 12,
#       :rebounds => 4,
#       :assists => 7,
#       :steals => 7,
#       :blocks => 15,
#       :slam_dunks => 10
#       },
#       {
#       :name => "DeSagna Diop",
#       :number => 2,
#       :shoe => 14,
#       :points => 24,
#       :rebounds => 12,
#       :assists => 12,
#       :steals => 4,
#       :blocks => 5,
#       :slam_dunks => 5
#       },
#       {
#       :name => "Ben Gordon",
#       :number => 8,
#       :shoe => 15,
#       :points => 33,
#       :rebounds => 3,
#       :assists => 2,
#       :steals => 1,
#       :blocks => 1,
#       :slam_dunks => 0
#       },
#       {
#       :name => "Brendan Haywood",
#       :number => 33,
#       :shoe => 15,
#       :points => 6,
#       :rebounds => 12,
#       :assists => 12,
#       :steals => 22,
#       :blocks => 5,
#       :slam_dunks => 12
#       }
#     ]
#   }
# }
# end

# def points_for(player_name)
#   game_hash[:home_team][:players].each do |player|
#     if player[:name] == player_name
#       return player[:points]
#     end
#   end
# end

def num_points_scored(name)
  answer = 0

  game_hash.each do |team, details_hash|
    players_array = details_hash[:players]
      players_array.each do |player, stats|

        if player == name
          answer = stats[:points]
        end
      end
  end
  answer
end



# def shoe_size(name)
#   answer = nil
#
#   game_hash.each do |team, details_hash|
#     players_array = details_hash[:players]
#       players_array.each do |player_details_hash|
#         if player_details_hash[:name] == name
#           answer = player_details_hash[:shoe]
#         end
#       end
#   end
#   answer
# end


# def team_colors (team_name)
#     colors = nil
#     game_hash.each do |team, team_details_hash|
#         if team_details_hash[:name] == team_name
#             colors = team_details_hash[:colors].flatten
#         end
#     end
#     colors
# end


# def team_names
#   game_hash.collect do |team, team_details_hash|
#     team_details_hash[:name]
#   end
# end


# def player_numbers (team_name)
#   player_numbers_list = []
#   game_hash.each do |team, team_details_hash|
#     if team_details_hash[:name] == team_name
#       team_details_hash[:players].each do |player|
#         player.each do |key, value|
#           if key == :number
#             player_numbers_list << value
#           end
#         end
#       end
#     end
#   end
#   player_numbers_list
# end
#
#
# def player_stats(player_name)
#   player_stats = {}
#   game_hash.each do |team, team_details_hash|
#     team_details_hash[:players].each do |stats|
#
#       if stats[:name] == player_name
#         stats.delete(:name)
#         player_stats = stats
#       end
#     end
#   end
#   player_stats
# end
#
# def big_shoe_rebounds
#   big_shoes_guy = 0
#   rebounds = 0
#     game_hash.each do | team, team_details_hash|
#       team_details_hash[:players].each do | stats |
#         if stats[:shoe] > big_shoes_guy
#           big_shoes_guy = stats[:shoe]
#           rebounds = stats[:rebounds]
#         end
#       end
#     end
#   rebounds
# end

# require 'pry'
# def game_hash
# hash = {
# :home => {:team_name => "Brooklyn Nets", colors:["Black", "White"],
#    :players => {"Alan Anderson" => {number: 0, shoe: 16, points: 22,
#      rebounds: 12, assists: 12, steals: 3, blocks: 1, slam_dunks: 1},
#      "Reggie Evans" => {number: 30, shoe: 14, points: 12,
#        rebounds: 12, assists: 12, steals: 12, blocks: 12, slam_dunks: 7},
#        "Brook Lopez" => {number: 11, shoe: 17, points: 17,
#          rebounds: 19, assists: 10, steals: 3, blocks: 1, slam_dunks: 15},
#          "Mason Plumlee" => {number: 1, shoe: 19, points: 26,
#            rebounds: 12, assists: 6, steals: 3, blocks: 8, slam_dunks: 5},
#            "Jason Terry" => {number: 31, shoe: 15, points: 19,
#              rebounds: 2, assists: 2, steals: 4, blocks: 11, slam_dunks: 1}
#            }},
# :away => {
#   team_name:"Charlotte Hornets", colors:["Turquoise", "Purple"],
#    :players => {"Jeff Adrien" => {number: 4, shoe: 18, points: 10,
#      rebounds: 1, assists: 1, steals: 2, blocks: 7, slam_dunks: 2},
#      "Bismak Biyombo" => {number: 0, shoe: 16, points: 12,
#        rebounds: 4, assists: 7, steals: 7, blocks: 15, slam_dunks: 10},
#        "Desagna Diop" => {number: 2, shoe: 14, points: 24,
#          rebounds: 12, assists: 12, steals: 4, blocks: 5, slam_dunks: 5},
#          "Ben GOrdon" => {number: 8, shoe: 15, points: 33,
#            rebounds: 3, assists: 2, steals: 1, blocks: 1, slam_dunks: 0},
#            "Brendan Haywood" => {number: 33, shoe: 15, points: 6,
#              rebounds: 12, assists: 12, steals: 22, blocks: 5, slam_dunks: 12}
#              }}
#
#
#
# }
#
# end
#
# def num_points_scored(player)
# game_hash[:home][:players].each do |key,value|
#   if key == player
#
#   end
# end
# end
#
# def num_points_scored (name)
#   answer = nil
#
#   game_hash.each do |team, details_hash|
#     players_array = details_hash[:players]
#       players_array.each do |player_details_hash|
#         if player_details_hash[:name] == name
#           answer = player_details_hash[:points]
#         end
#       end
#   end
#   answer
# end
#
#
# def shoe_size(name)
#   answer = nil
#
#   game_hash.each do |team, details_hash|
#     players_array = details_hash[:players]
#       players_array.each do |player_details_hash|
#         if player_details_hash[:name] == name
#           answer = player_details_hash[:shoe]
#         end
#       end
#   end
#   answer
# end
#
#
# def team_colors (team_name)
#     colors = nil
#     game_hash.each do |team, team_details_hash|
#         if team_details_hash[:name] == team_name
#             colors = team_details_hash[:colors].flatten
#         end
#     end
#     colors
# end
#
#
# def team_names
#   game_hash.collect do |team, team_details_hash|
#     team_details_hash[:name]
#   end
# end
#
#
# def player_numbers (team_name)
#   player_numbers_list = []
#   game_hash.each do |team, team_details_hash|
#     if team_details_hash[:name] == team_name
#       team_details_hash[:players].each do |player|
#         player.each do |key, value|
#           if key == :number
#             player_numbers_list << value
#           end
#         end
#       end
#     end
#   end
#   player_numbers_list
# end
#
#
# def player_stats(player_name)
#   player_stats = {}
#   game_hash.each do |team, team_details_hash|
#     team_details_hash[:players].each do |stats|
#
#       if stats[:name] == player_name
#         stats.delete(:name)
#         player_stats = stats
#       end
#     end
#   end
#   player_stats
# end
#
# def big_shoe_rebounds
#   big_shoes_guy = 0
#   rebounds = 0
#     game_hash.each do | team, team_details_hash|
#       team_details_hash[:players].each do | stats |
#         if stats[:shoe] > big_shoes_guy
#           big_shoes_guy = stats[:shoe]
#           rebounds = stats[:rebounds]
#         end
#       end
#     end
#   rebounds
# end
