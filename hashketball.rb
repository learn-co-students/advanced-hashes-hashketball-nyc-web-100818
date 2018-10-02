require "pry"


def game_hash
  hash =
   {
    :home => {
        team_name: "Brooklyn Nets",
        colors: ["Black", "White"],
        :players => {
          "Alan Anderson" => {
            number: 0,
            shoe: 16,
            points: 22,
            rebounds: 12,
            assists: 12,
            steals: 3,
            blocks: 1,
            slam_dunks: 1},
          "Reggie Evans" => {
            number: 30,
            shoe: 14,
            points: 12,
            rebounds: 12,
            assists: 12,
            steals: 12,
            blocks: 12,
            slam_dunks: 7},
          "Brook Lopez" => {
            number: 11,
            shoe: 17,
            points: 17,
            rebounds: 19,
            assists: 10,
            steals: 3,
            blocks: 1,
            slam_dunks: 15},
          "Mason Plumlee" => {
            number: 1,
            shoe: 19,
            points: 26,
            rebounds: 12,
            assists: 6,
            steals: 3,
            blocks: 8,
            slam_dunks: 5},
          "Jason Terry" => {
            number: 31,
            shoe: 15,
            points: 19,
            rebounds: 2,
            assists: 2,
            steals: 4,
            blocks: 11,
            slam_dunks: 1}
             }
           },
  :away => {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      :players => {
          "Jeff Adrien" => {
            number: 4,
            shoe: 18,
            points: 10,
            rebounds: 1,
            assists: 1,
            steals: 2,
            blocks: 7,
            slam_dunks: 2},
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10},
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5},
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0},
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12}
               }
             }
           }
 end

 def good_practices

   game_hash.each do |location, team_data|
     #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
  # binding.pry
        #location is :home & :away
        #team_data is values of :home & :away.. so everything of teamname,colors,players, "Alan Anderson" etc..
       team_data.each do |attribute, data|
          #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
          #attribute is :team_name, :colors, :players
          #data is values of attribute so the information that follows.. (everything of strings & array)"Brooklyn Nets"
    #    binding.pry
         #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
         # data_item is deeper into data.. only reads through :players because it has deeper hash objects. There is no data_item for :team_name & :colors
         data.each do |data_item|
  #     binding.pry
       end
     end
   end
 end
#good_practices


 def home_team_name
   game_hash[:home][:team_name]
 end

 puts home_team_name
 # => "Brooklyn Nets"


require 'pry'

def num_points_scored(players_name)
#  players = game_hash[:home][:players].merge(game_hash[:away][:players])
#    score = players[players_name][:points]
#binding.pry
score = 0
  game_hash.each do |location, team_data| #location = #:home or :away, team_data = everything from :team_name , :colors , :players
    players_stats = team_data[:players] #gathers all of :players data
  players_stats.each do |attribute, data| #attribute = "names of the players,"Alan Anderson"", data = hashed info. {:number=>0, :shoe=>16, :points=>22, :rebounds=>12, :assists=>12, :steals=>3, :blocks=>1, :slam_dunks=>1}
  # binding.pry
      if players_name == "#{attribute}"
        score = data[:points]
        end
      end
    end
      score
end

def shoe_size(name)
#binding.pry
  merge_data = game_hash[:home][:players].merge(game_hash[:away][:players]) #returns new hash containg the contents of :away,:players
  size = merge_data[name][:shoe] # [name] = "Jeff Adrien" calling from
  # binding.pry
end

def team_colors(team)
# binding.pry
 game_hash.each do |location, team_data|
   team_data.each do |attribute, data|
    #binding.pry
     if team == data  #data is the strings in team_data: "Brooklyn Nets" == "Brooklyn Nets"
       return game_hash[location][:colors]
     end
   end
 end
end

def team_names
  array = []
    home_name = game_hash[:home][:team_name]
    away_name = game_hash[:away][:team_name]
    array << home_name
    array << away_name
end

#Build a method, player_numbers, that takes in an argument of a team name and returns an array of the jersey number's for that team.
def player_numbers(team_name)
  array =[]
  game_hash.each do |location, team|  #check first section hash :home,:away  & :team_name, :colors:, :players (everything inside them all)
    if team_name ==  team[:team_name]  #team_name array == :team_name ("Brooklyn Nets" or "Charlotte Hornets")
      team[:players].each do |name, info| #iterate block of team[:players] "Alan Anderson" => {:number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1},
  #  binding.pry                                                                      #  "Reggie Evans" => {:number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},
        array << info[:number]
      end
    end
  end
  array
end

#takes in an argument of a player's name and returns a hash of that player's stats.
def player_stats(players_name)
    merged = game_hash[:home][:players].merge(game_hash[:away][:players])
    merged.each do |name, stats|
    if name == players_name
      return stats

#  game_hash.each do |location, team_detail|
#   team_detail[:players].each do |stats|
#  binding.pry
#    if players_name == stats[0]
#        return stats[1]
#      end
    end
  end
end

def big_shoe_rebounds
    #binding.pry
    merged = game_hash[:home][:players].merge(game_hash[:away][:players])
    stats_shoe = merged.max_by{|player, stats| stats.fetch(:shoe)}[1]  #takes the merged variable and finds the maximum player's stat's in shoe size by iterating through stats.fetch(shoe) then the [1] returns only the array *no playersname*
      return stats_shoe[:rebounds]
end
