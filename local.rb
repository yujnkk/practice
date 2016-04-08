class Hello
	attr_accessor :name
	def greet
		puts "hi,#{name}"
	end
	def self.test
		puts "test"
	end
end

bob = Hello.new;
bob.name = 1
p bob.name
p Hello.test
