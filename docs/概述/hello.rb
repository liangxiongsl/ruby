class Node
	@@total = 0
	@name = "sdsd"
	
	def initialize(name)
		@name = name
		@@total += 1
	end
	
	def prt()
		puts "node_name: #@name"
		puts "total_num: #@@total \n\r"
	end 
end

a = Node.new("张三")
b = Node.new("李四")
c = Node.new("王五")
d = Node.new("赵六")
e = Node.new("孙七")
f = Node.new("老八")

$ss = "global"
class Nd
	def initialize()
		puts "#$ss"
	end
end

d = {[1, "3", nil] => :搞咩}
puts d[[1, "3", nil]]



