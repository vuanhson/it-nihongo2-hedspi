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
lang1 = "japanese"
if lang1 == "japanese"
	p "Hello japan"
end
lang2 = :vietnamese
if lang2 == :vietnamese
	p "Hello vietnam"
end
# 違いは以下
puts "japanse".object_id
puts "japanse".object_id
puts :vietnamese.object_id
puts :vietnamese.object_id