puts "あっちむいてホイゲームの開始です！"

def acchimuite_hoi

    puts "最初はグー、じゃんけん・・・・"
    puts "0(グー),1(チョキ),2(パー),3(今日のところは勘弁しておく。終了します。)"

    select_hand = gets.to_i
    aite_hand = rand(3)

    jyankens = ["グー","チョキ","パー"]

    if select_hand > 2
        return false
    end
    
    puts "------------------------------"
    puts "あなたの手:#{jyankens[select_hand]}"
    puts "あいての手:#{jyankens[aite_hand]}"
    puts "------------------------------"

    if select_hand == aite_hand
        puts "あ-いこでー..."
        puts "------------------------------"
        return true
    elsif select_hand == 3 || aite_hand == 3
        exit
    elsif (select_hand == 0 && aite_hand ==1) || (select_hand == 1 && aite_hand ==2) || (select_hand == 2 && aite_hand ==0)
        puts "あなたの勝ちです"
        puts "------------------------------"
        @win = "win"
    else
        puts "あなたの負けです"
        puts "------------------------------"
        @lose = "lose"
    end

    puts "あっちむいてーーーー"
    puts "0(上),1(右),2(下),3(左)"
    puts "ほい"

    select_dire = gets.to_i
    aite_dire = rand(4)

    acchimuites = ["上","右","下","左"]

    if select_dire > 3
        return false
    end
    
    puts "------------------------------"
    puts "あなたの手:#{acchimuites[select_dire]}"
    puts "あいての手:#{acchimuites[aite_dire]}"
    puts "------------------------------"

    if @win == "win" && select_dire == aite_dire
        puts "You Win!!!"
        return false
      elsif @lose == "lose" && select_dire == aite_dire 
        puts "You Lose...."
        return false
      else 
        return true
      end
end

next_game = true
    
loop do
    next_game = acchimuite_hoi
    if next_game == false
    break
    end
end
