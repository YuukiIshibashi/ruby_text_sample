# 基本的な構造のクラス（数値・文字列・真偽値・シンボル・nil・正規表現）unit

# while true
#   puts "1~5で評価を入力してください！やめたかったら「6」を入力してね"
#   point = gets.to_i

#   if point == 6
#     puts "終了します！"
#     break

#   elsif point != 0
#     puts "コメントをかいてね"
#     comment = gets
#     puts "あなたのポイント: #{point}"
#     puts "あなたのコメント: #{comment}"
#   else
#     puts "ちゃんといれてよね"
#   end
# end


# 複雑な構造を持ったクラス（Array Hash）unit

# posts = []

# while true
#   puts "1~5で評価を入力してください！やめたかったら「6」を入力してね"
#   point = gets.to_i

#   if point == 6
#     puts "終了します！"
#     break
#   elsif point != 0
#     puts "コメントをかいてね"
#     comment = gets
#     puts "ポイント：#{point}　コメント：#{comment}"
#     post = {point: point, comment: comment}
#     posts.push(post)
#     puts posts
#   else
#     puts "ちゃんといれてよね"
#   end
# end


# 組み込みライブラリunit

# while true
#   puts "1~5で評価を入力してください！やめたかったら「6」を入力してね"
#   point = gets.to_i

#   if point == 6
#     puts "終了します！"
#     break
#   elsif point != 0
#     puts "コメントをかいてね"
#     comment = gets
#     post = "ポイント：#{point}　コメント：#{comment}"
#     file = File.open("data.txt", "a")
#     file.puts(post)
#     file.close
#     read_file = File.open("data.txt", "r")
#     puts read_file.read
#     read_file.close
#   else
#     puts "ちゃんといれてよね"
#   end
# end



# 演算子・式・制御構文unit

# while true
#   puts "1:評価を入力する"
#   puts "2:今までの結果を確認する"
#   puts "3:やめる"
#   num = gets.to_i
  
#   case
#   when num == 1
#     puts "1~5で評価を入力してください！"
#     point = gets.to_i
#     if point == 0 || point > 5
#       puts "ちゃんといれてよね"
#     else
#       puts "コメントをかいてね"
#       comment = gets
#       post = "ポイント：#{point}　コメント：#{comment}"
#       file = File.open("data.txt", "a")
#       file.puts(post)
#       file.close
#     end
#   when num == 2
#     puts "これまでの結果"
#     read_file = File.open("data.txt", "r")
#     puts read_file.read
#     read_file.close
#   when num == 3
#     puts "終了します！"
#     break
#   else
#     puts "ちゃんといれてよね"
#   end
# end


# 繰り返しメソッドなどの便利なメソッドunit

# while true
#   puts "1:評価を入力する"
#   puts "2:今までの結果を確認する"
#   puts "3:やめる"
#   num = gets.to_i
  
#   case
#   when num == 1
#     puts "1~5で評価を入力してください！"
#     point = gets.to_i
#     if point == 0 || point > 5
#       puts "ちゃんといれてよね"
#     else
#       puts "コメントをかいてね"
#       comment = gets
#       post = "ポイント：#{point}　コメント：#{comment}"
#       file = File.open("data.txt", "a")
#       file.puts(post)
#       file.close
#     end
#   when num == 2
#     puts "これまでの結果"
#     read_file = File.open("data.txt", "r")
#     read_file.each {|line|
#       print line
#     }
#     read_file.close
#   when num == 3
#     puts "終了します！"
#     break
#   else
#     puts "ちゃんといれてよね"
#   end
# end

# 基礎文法シリーズ最終

def get_point
  puts "1~5で評価を入力してください！"
  point = gets.to_i
  if point == 0 || point > 5
    puts "ちゃんといれてよね"
  else
    puts "コメントをかいてね"
    comment = gets
    post = "ポイント：#{point}　コメント：#{comment}"
    file = File.open("data.txt", "a")
    file.puts(post)
    file.close
  end
end

def show_result
  puts "これまでの結果"
  read_file = File.open("data.txt", "r")
  read_file.each {|line|
    print line
  }
  read_file.close
end

while true
  puts "1:評価を入力する"
  puts "2:今までの結果を確認する"
  puts "3:やめる"
  num = gets.to_i
  
  case num
  when  1
    get_point
  when  2
    show_result
  when  3
    puts "終了します！"
    break
  else
    puts "数字を入力してね"
  end
end











