
class Player  
    
  def hand
    # Process of the following method is created in this.
    # Puts the console into an input wait state, and outputs the value the player types from the console
    puts "Enter a number"
    puts "0 : Goo"
    puts "1 : Choki"
    puts "2 : Par"      

    player_input = gets.chomp            

    while player_input.to_i > 2 || player_input.to_i < 0 do
      puts "Enter a number between 0-2" 
      player_input = gets.chomp
    end
    
    return player_input   
  end
end
   
class Enemy
  def hand
    # Create processing of the method that outputs the value of goo, choki, par at random in this
    enemy_input = rand(0..2)
  end
end
   
class Janken
  def pon(player_hand, enemy_hand)
    # Create a method in it that will cause the player to hit the value you typed in and the one that Enemy randomly gave out, and output the result on the console
    # At that time, when you enter values other than draw or Goo, Choki, Par, do another Janken.
    # Show what the other party gave out of Goo, Choki, Par      

    if enemy_hand.to_i == 0
      rival_hand = "Goo"
    elsif enemy_hand.to_i == 1
      rival_hand = "Choki"
    else
      rival_hand = "Par"
    end
    
    result = ((player_hand.to_i - enemy_hand.to_i) + 3) % 3    

    if result == 0
      puts "The hand of the other party is #{rival_hand}.It is a draw Please try again"
        player = Player.new
        enemy = Enemy.new
        janken = Janken.new
        janken.pon(player.hand, enemy.hand)
    elsif result == 1
      puts "The hand of the other party is #{rival_hand}.You loose" 
    elsif result == 2
      puts "The hand of the other party is #{rival_hand}.you are the winner"      
    end   
  end
end
   
player = Player.new
enemy = Enemy.new
janken = Janken.new
   
# The Janken method is invoked by the following description
janken.pon(player.hand, enemy.hand)



