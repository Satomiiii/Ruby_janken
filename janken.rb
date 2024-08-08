def janken
    choices = ["グー", "チョキ", "パー", "戦わない"]
    loop do
      puts "じゃんけん...(0: グー, 1: チョキ, 2: パー, 3: 戦わない)"
      player_choice = gets.to_i
      if player_choice == 3
        puts "ゲームを終了します。"
        exit
      elsif ![0, 1, 2].include?(player_choice)
        puts "0~3の数字を入力してください"
        next
      end
  
      computer_choice = rand(3)
      puts "あなたの手: #{choices[player_choice]}, コンピュータの手: #{choices[computer_choice]}"
  
      if player_choice == computer_choice
        puts "あいこで..."
        next
      elsif (player_choice == 0 && computer_choice == 1) || (player_choice == 1 && computer_choice == 2) || (player_choice == 2 && computer_choice == 0)
        puts "あなたの勝ち！"
        return "player"
      else
        puts "コンピュータの勝ち！"
        return "computer"
      end
    end
  end
  
  def acchimuite_hoi(winner)
    directions = ["↑", "↓", "←", "→"]
    loop do
      puts "あっち向いて...(0: ↑, 1: ↓, 2: ←, 3: →)"
      winner_choice = gets.to_i
      if ![0, 1, 2, 3].include?(winner_choice)
        puts "0~3の数字を入力してください"
        next
      end
  
      loser_choice = rand(4)
      puts "勝者の指差し方向: #{directions[winner_choice]}, 敗者の顔の向き: #{directions[loser_choice]}"
  
      if winner_choice == loser_choice
        if winner == "player"
          puts "あなたの勝ちです！"
        else
          puts "コンピュータの勝ちです！"
        end
        exit
      else
        puts "もう一度じゃんけん..."
        break
      end
    end
  end
  
  loop do
    winner = janken
    acchimuite_hoi(winner)
  end

  

  