class Janken
    puts "じゃんけん、、、、、"
    
    def janken
        puts  "0(グー)1(チョキ)2(パー)"
        @jankenMe = gets.to_i 
        puts "-----------------------------------"
        
        jankens = ["グー","チョキ","パー"]
        jankenU = ["グー","チョキ","パー"]
        
        if @jankenMe == 0
            puts jankens[0]
        elsif @jankenMe == 1
            puts jankens[1]
        elsif @jankenMe == 2
            puts jankens[2]
        else
            puts "０〜2を選択してください"
        end 

        @jankenYou = jankenU.sample
        puts @jankenYou
        
        puts "------------------------------------"
        
        if (@jankenMe == 0 && @jankenYou == "チョキ") || (@jankenMe == 1 && @jankenYou == "パー") || (@jankenMe == 2 && @jankenYou == "グー")
            puts "あなたの勝ちです"
            @result = "myWin"
            return attiMuite
        elsif (@jankenMe == 0 && @jankenYou == "グー") || (@jankenMe == 1 && @jankenYou == "チョキ") || (@jankenMe == 2 && @jankenYou == "パー")
            puts "あいこで"
            return true
        elsif (@jankenMe == 0 && @jankenYou == "パー") || (@jankenMe == 1 && @jankenYou == "グー") || (@jankenMe == 2 && @jankenYou == "チョキ")
            puts "あなたの負けです"
            @result = "myLose"
            return attiMuite
        end 
        puts "-------------------------------------"
    end    
    
    def attiMuite    
        puts "あっち向いて、、、、、"
        puts "0(上)1(右)2(下)3(左)"
        a = gets.to_i 
        houkou = ["上","右","下","左"]
        @houkouMe = houkou[a]
        puts "-----------------------------------"
        puts @houkouMe
        houkouU = ["上","右","下","左"]
        @houkouYou = houkouU.sample
        puts @houkouYou.to_s
        puts "-----------------------------------"
        
        if @houkouMe == @houkouYou
            case @result
            when "myWin"
                puts "あなたの勝ちです"
                return false
            when "myLose"
                puts "あなたの負けです"
                return false
            end
        elsif @houkouMe != @houkouYou
            puts "勝敗が決まりませんでした。もう一度じゃんけんをしてください"
            return true
        end
        
    end
    
end 

jan = Janken.new()

nextGame = true

while nextGame
    nextGame = jan.janken
end 








    
        