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
ran1 = 1..10	#include 10
p ran1.to_a	#to array
ran2 = 1...10	#not include 10
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
p "----------------hash--------------";
# 配列の要素に名前をつけたもの
fruits = { "apple" => 5, "banana" => 3}
p fruits["apple"]
fruits["orange"] = 8
wishlist = Hash.new()
# 配列同様にイテレーションできる
fruits.each do |i,j|
p "%s: %d" % [i,j]
end
pricelist =fruits.select do |i,j|
j > 4
end
p pricelist

p "----------------じょうけんぶんき--------------";
score = 75
if score > 90 then
	p "Excellent"
elsif score > 70 then
	p "Good(" + score.to_s + ")"
else
	p "bad"
end

is_completed = false
unless is_completed
	p "It's happened error"
end
# if文の入れ替え
is_pass = true
p "It's passed" if is_pass


=begin
p "Please input your question"
p "[1] What your name"
p "[2] How old are you"
p "[3] What do you like food"
p "[0] Nothing"
p ">>>"
input = gets
case input.to_i
when 1
	p "I'm Duc"
when 2
	p "I'm 23 years old"
when 3
	p "I love all of Vietnam food"
else
	p "I did't understand"
end
=end
p "----------------ひかくえんざんし--------------";
p 1 == 1
p 2 != 3
p 10 > 5
p 12 <= 100
p "A" < "a"
# UFO演算子
p 10 <=> 1 # left higher than right  return 1
p 1 <=> 1	# left equal right return 0
p 1 <=> 10 # left lower than right return -1

p "----------------ループ(for)-------------";
# 基本的なループ
10.times do |i|
	print (i ** 2).to_s + ", "
end
print ("\n")
# レンジを使うループ
for i in 1..5
	print i.to_s + ", "
end
print ("\n")
for i in 1...5
	print i.to_s + ", "
end
print ("\n")

p "----------------ループ(while)-------------";
times = 0
total = 1.0
while total < 2
	total *= 1.03
	times += 1
end
p "%d回(%f)" % [times, total]

times = 0
total = 1.0
until total < 0.05
	total /= 2
	times += 1
end
p "%d回(%f)" % [times, total]

p "----------------method-------------";
def func1(apple, orange)
r = apple * 100
r += orange * 80
return r
end
p func1(3, 5) # <= func1 3, 5

def func2(apple, orange, basket=1)
r = apple * 100
r += orange * 80
r += basket * 300
end
p func2(2, 4) # <= func2 2,4
def func3(name, *favorite)
favorite
end
p func3("ishida", "Ruby","PHP","Javascript")

p "----------------block-------------";
# ブロックとは処理を独立させたもの
# do ~ endと{ ~ }は等価
(1..5).each do |counter|
	puts "iteration #{counter}"
end
(1..5).each { |counter|
	puts "iteration #{counter}"
}
p "----------------use block-------------";
a = [ "a", "b", "c", "d" ]
p a.collect() {|x|
x + "!"
}

array = [1, 2, 3, 4, 5]
doubled = array.map() do |element|
element * 2
end
puts doubled
p "----------------YIELD-------------";
def do3times
yield
yield
yield
end
# 上のメソッドは使う人によって自由に変更できる
do3times() {
puts "I’m a Japanese"
}
do3times() {
puts "I’m a Vietnamese"
}
p "----------------CLASS & Instance-------------";
class Human
	def initialize(name, age = 0)
		@name = name
		@age = age
	end
	def name=(name)
		@name = name
	end
	def name
		@name
	end
end
man = Human.new "ishida", 31
p man