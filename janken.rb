class AcchimuiteGame

  def initialize
    @directions = ["上","下","左","右"]
    @direction = @directions.sample
    @call_win = "勝ち",""
    @call_lose = "負け",""
    @call_draw = "引き分け",""
  end

  def game_win(finger,face)
    puts "あっち向いて〜"
    puts "０（上）１（下）２（左）３（右）"
    pointing = gets.chomp
    puts "ホイッ！"  
    
    if pointing == "０"
      puts "#{finger}：上を指しました"
      puts "#{face}：#{@direction}を向きました"
      
      case @direction
      when "上"
        puts @call_win
      else
        puts @call_draw
      end  
      
    elsif pointing == "１"
      puts "#{finger}：下を指しました"
      puts "#{face}：#{@direction}を向きました"
      
      case @direction
      when "下"
        puts @call_win
      else
        puts @call_draw
      end 
      
    elsif pointing == "２"
      puts "#{finger}：左を指しました"
      puts "#{face}：#{@direction}を向きました"
      
      case @direction
      when "左"
        puts @call_win
      else
        puts @call_draw
      end 
      
    elsif pointing == "３"
      puts "#{finger}：右を指しました"
      puts "#{face}：#{@direction}を向きました"
      
      case @direction
      when "右"
        puts @call_win
      else
        puts @call_draw
      end
      
    else
      puts $call_erorr
    end
  end
  
  def game_lose(finger,face)
    puts "あっち向いて〜"
    puts "０（上）１（下）２（左）３（右）"
    pointing = gets.chomp
    puts "ホイッ！"
  
    if pointing == "０"
      puts "#{finger}：#{@direction}を指しました"
      puts "#{face}：上を向きました"
      
      case @direction
      when "上"
        puts @call_lose
      else
        puts @call_draw
      end
      
    elsif pointing == "１"
      puts "#{finger}：#{@direction}を指しました"
      puts "#{face}：下を向きました"
      
      case @direction
      when "下"
        puts @call_lose
      else
        puts @call_draw
      end
      
    elsif pointing == "２"
      puts "#{finger}：#{@direction}を指しました"
      puts "#{face}：左を向きました"
      
      case @direction
      when "左"
        puts @call_lose
      else
        puts @call_draw
      end
      
    elsif pointing == "３"
      puts "#{finger}：#{@direction}を指しました"
      puts "#{face}：右を向きました"
      
      case @direction
      when "右"
        puts @call_lose
      else
        puts @call_draw
      end
      
    else
      puts $call_erorr
    end
  end
  
end

acchimuite = AcchimuiteGame.new()


$call_erorr = "エラーです",
              "全角数字で入力して下さい",
              "０，１，２，３のどれかを入力して下さい",
              ""
              
status = "game_begin"
loop{
  if status == "game_begin"
    puts "じゃんけん・・・","０（グー）１（チョキ）２（パー）３（戦わない）"
    myhand = gets.chomp
    puts "ポイッ!"
  elsif status == "game_draw"
    myhand = gets.chomp
    puts "ショッ！"
    status = "game_begin"
  end

  call_aiko = "あいこで・・・","０（グー）１（チョキ）２（パー）３（戦わない）"
  
  hands = ["グー","チョキ","パー"]
  opponent_hand = hands.sample
  
  if myhand == "０"
    puts "自分：グーを出しました"
    puts "相手：#{opponent_hand}を出しました"
    
    case opponent_hand
    when "グー"
      puts call_aiko
      status = "game_draw"
    when "チョキ"
      acchimuite.game_win("自分","相手")
    when "パー"
      acchimuite.game_lose("相手","自分")
    end
    
  elsif myhand == "１"
    puts "自分：チョキを出しました"
    puts "相手：#{opponent_hand}を出しました"
    
    case opponent_hand
    when "グー"
      acchimuite.game_lose("相手","自分")
    when "チョキ"
      puts call_aiko
      status = "game_draw"
    when "パー"
      acchimuite.game_win("自分","相手")
    end
    
  elsif myhand == "２"
    puts "自分：パーを出しました"
    puts "相手：#{opponent_hand}を出しました"
    
    case opponent_hand
    when "グー"
      acchimuite.game_win("自分","相手")
    when "チョキ"
      acchimuite.game_lose("相手","自分")
    when "パー"
      puts call_aiko
      status = "game_draw"
    end
    
  elsif myhand == "３"
    puts "ゲームを終わります",""
    break
  
  else
    puts $call_erorr
  end
}