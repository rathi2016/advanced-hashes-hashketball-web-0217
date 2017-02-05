# Write your code here!
def game_hash
   {

    :home => {
      :team_name=> "Brooklyn Nets",:colors =>["Black","White"]  ,
      :players =>{
        "Alan Anderson"=> {:number => 0,:shoe =>16 ,:points =>22 ,:rebounds =>12 ,:assists =>12  , :steals =>3 ,:blocks =>1 ,:slam_dunks =>1 },
        "Reggie Evans"=>  {:number => 30,:shoe =>14 ,:points =>12 ,:rebounds =>12 ,:assists =>12  , :steals =>12 ,:blocks =>12 ,:slam_dunks =>7 },
        "Brook Lopez"=>   {:number => 11,:shoe =>17 ,:points =>17 ,:rebounds =>19 ,:assists =>10  , :steals =>3 ,:blocks =>1 ,:slam_dunks => 15},
        "Mason Plumlee"=> {:number => 1,:shoe =>19 ,:points =>26 ,:rebounds =>12 ,:assists => 6 , :steals =>3 ,:blocks =>8 ,:slam_dunks => 5},
        "Jason Terry"=>   {:number => 31,:shoe =>15 ,:points =>19 ,:rebounds =>2 ,:assists =>2  , :steals =>4 ,:blocks =>11 ,:slam_dunks => 1}

      }

    } ,
  :away => {
    :team_name=>"Charlotte Hornets",:colors =>["Turquoise", "Purple"],
    :players =>{
      "Jeff Adrien"=>    {:number => 4,:shoe =>18 ,:points =>10 ,:rebounds =>1 ,:assists =>1  , :steals =>2 ,:blocks =>7 ,:slam_dunks =>2 },
      "Bismak Biyombo"=> {:number =>0,:shoe =>16 ,:points =>12 ,:rebounds =>4 ,:assists =>7  , :steals =>7 ,:blocks =>15 ,:slam_dunks =>10 },
      "DeSagna Diop"=>   {:number => 2,:shoe =>14 ,:points =>24 ,:rebounds =>12 ,:assists =>12  , :steals =>4 ,:blocks =>5 ,:slam_dunks => 5},
      "Ben Gordon"=>     {:number =>8 ,:shoe =>15 ,:points =>33 ,:rebounds =>3 ,:assists => 2 , :steals =>1 ,:blocks =>1 ,:slam_dunks => 0},
      "Brendan Haywood"=> {:number =>33,:shoe =>15 ,:points =>6 ,:rebounds =>12 ,:assists =>12  , :steals =>22 ,:blocks =>5 ,:slam_dunks =>12 }
         }
    }

  }
end
 def num_points_scored(string)
   game_hash.each_key do |key|
    if game_hash[key].include?(:players)
      if game_hash[key][:players].include?(string)
         return game_hash[key][:players][string][:points]
      end
    end

  end

 end
 def shoe_size(string)
   game_hash.each_key do |key|
    if game_hash[key].include?(:players)
      if game_hash[key][:players].include?(string)
         return game_hash[key][:players][string][:shoe]
      end
    end

  end
 end

 def team_colors(team_nam)
   game_hash.each_key do |key|
    if game_hash[key].include?(:team_name)
      if game_hash[key][:team_name].include?(team_nam)
         return game_hash[key][:colors]
      end
    end

  end

 end

 def team_names
   arr = [ ]
   game_hash.each_key do |key|
     if game_hash[key].include?(:team_name)
       arr << game_hash[key][:team_name]
     end
   end
   arr

 end
 def player_numbers(team_nam)
   arr1 =[]
   game_hash.each_key do |key|
     if game_hash[key][:team_name] == team_nam
        game_hash[key][:players].each_key do |n_key|
         arr1 << game_hash[key][:players][n_key][:number]
        end

     end
   end
   arr1
 end

 def player_stats(player)
   game_hash.each_key do |key|
    if game_hash[key][:players].include?(player)
      return game_hash[key][:players][player]
    end
  end
 end

 def big_shoe_rebounds
   big_shoe = 0
  big_rebound = 0
  game_hash.each_key do |key|
    game_hash[key][:players].each_key do |player|
      game_hash[key][:players][player][:shoe]
       if big_shoe == 0 || big_shoe <  game_hash[key][:players][player][:shoe]

          big_shoe = game_hash[key][:players][player][:shoe]
          big_rebound = game_hash[key][:players][player][:rebounds]



      end
    end
  end
  big_rebound
 end
