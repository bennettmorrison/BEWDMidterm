class User

	attr_accessor :email, :pword

	def initialize
		@email = get_username
		@pword = get_password
	end

	def get_username
		puts "What's your gmail email name? (For demo purposes, use 'mctester00@gmail.com')"
		@email = gets.chomp
		@email
	end

	def get_password
		puts "What's your password? (For demo purposes, use 't3stt3st')"
		@pword = gets.chomp
		@pword
	end

end