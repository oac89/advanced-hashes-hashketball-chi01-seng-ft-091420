require 'pry'

# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def num_points_scored(player_name)
  game_hash.each do |key, value| 
     value[:players].each do |player|
       if player[:player_name] == player_name  
         return player[:points]
      end 
     end
   end
 end
 
 def shoe_size(playshoe)
  game_hash.each do |key, value| 
     value[:players].each do |player|
       if player[:player_name] == playshoe  
        return player[:shoe]
      end 
     end

   end
 end

def team_colors(teamv)
  game_hash.map do |key, value| 
    if value[:team_name] == teamv 
    return value[:colors] 
    end
  end 
  
   
end  

def team_names
    names_of_teams = [ ]
    game_hash.each do |key,value|
      value [:team_name]
    names_of_teams << value[:team_name]
      
     end 
names_of_teams     

end

def player_numbers(team)
  jersey_numbs = [ ]
  game_hash.each do |key, value| 
    if value[:team_name] == team
        value[:players].each do |player|
         player[:number]  
        jersey_numbs << player[:number]
      end 
  end
end
  jersey_numbs 
end

# def new_hash
# game_hash[:home][:players].merge(game_hash[:away][:players])
# end 
  

def player_stats(players_name)
  game_hash.each do |key, value| 
    value[:players].each do |player|
      if player[:player_name] == players_name 
        return player 
       
      
    end 
   end
  end
end 



def big_shoe_rebounds
  big_foot_size = 0 
  big_foot_boards = 0
  game_hash.each do |key, value|
              #binding.pry
    value[:players].each do |player|  
      if player[:shoe] > big_foot_size 
        big_foot_size = player[:shoe] 
        big_foot_boards = player[:rebounds]
      end 
        
    end 
      return big_foot_boards 
  end
end 
 
  
