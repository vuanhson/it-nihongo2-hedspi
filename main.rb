p "-----------------------print---------------------";
print ("Hello");
p ("Hello world");
puts ("Hello world");
p "Hello";

=begin
	
this iss the comment
	
=end
p "----------------calculate-----------------------";
p 3 ** 16;

DEFAULT_VALUE=123489;
DEFAULT_VALUE=100;

p DEFAULT_VALUE;

p "----------------var-----------------------";

age, name = [31, "isida"] 
p age
p name

x,y,z = 1, *[2,3,4] #if asterisk before z, z = [3.4]
p x
p y
p z

my_point = 5
my_point +=10
fee=nil
fee ||=10

p my_point
p fee

p "----------------string-----------------------";
str = "私は日本人です"
p str + "私は1993年生まれです"
age = 24
p "私は#{age}歳です"
p "bow!" * 5
p str[2..4]
p "私は大学" + 4.to_s + "年生です"
p "私は大学%d年生です" % 4
# ヒアドキュメント
line = <<EOL
私はベトナム人です
私は1993年生まれです
EOL
p line
#use ruby -Ku <filename> if encode error
p "----------------symbol-----------------------";

# 下記例は同じ意味
lang1 = "japanese"  # "" use more memory
if lang1 == "japanese"
	p "Hello japan"
end
lang2 = :vietnamese # : Use less memory
if lang2 == :vietnamese
	p "Hello vietnam"
end
# 違いは以下
puts "japanse".object_id
puts "japanse".object_id
puts :vietnamese.object_id
puts :vietnamese.object_id

p "----------------Array-----------------------";
p Array.new(3)
p Array.new(3,5)

arr2 = Array.new(3) do |i| 
	i*2
end
p arr2
p "----------------テキスト-----------------------";
# テキストから配列をつくる
p "Ruby Java Python".split
p "100, 212, 345".split(",")
# 配列からテキストを作る
p [123,45,67,8,90].join
p ["I","am","a","Vietnamese"].join(" ")

p "----------------イテレーション(iteration)--------------";
arr = [1,2,3,4,5]
arr.each do |x|
	x *= 10
	p x
end

arr2 = arr.select do |i|
	i % 2 == 0
end
p arr2

arr3 = arr.collect do |i|
	i ** 2
end
p arr3

p "----------------range--------------";
# レンジ
ran1 = 1..10
p ran1.to_a
ran2 = 1...10
p ran2.to_a
# 配列に用いる場合、Forループの様に使える
total = 0
(1..10).to_a.each do |i|
total += i
end
p total
# 数字以外
chars1 = "a".."f"; p chars1.to_a
chars2 = "G".."L"; p chars2.to_a