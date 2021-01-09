require "csv"
puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1 then
 puts "拡張子を除いたファイル名を入力してください"

 file_name = gets.to_s
 
 puts "メモしたい内容を記入してください"
 p "完了したら Ctrl+d　を入力します"
text =  readlines(chomp: true)

CSV.open("#{file_name}.csv", 'w') do |csv|
  csv<< text
end

elsif memo_type==2 then
  puts "拡張子を除いた編集したいファイル名を入力してください"

  file_name = gets.to_s
 
  puts "メモしたい内容を記入してください"
  p "完了したら Ctrl+d　を入力します"
  text =  readlines(chomp: true)

  CSV.open("#{file_name}.csv", 'a') do |csv|
    csv<< text
  end
  
else
  puts "1か２を入力してください"
end
