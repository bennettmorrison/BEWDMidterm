require 'gmail'
require_relative 'User' 

class Req

	attr_accessor :user

	def initialize
		@user = User.new
	end
	
	def start
		connect_to_gmail
		check_connection ? puts('Connected!') : return
		people = get_contacts_from_gmail
		sorted = sort_items(people)
		counted = count_items(sorted)
		puts "There you have it"
		@gmail.logout
	end


	def show_me(something)
		puts something
	end

	def connect_to_gmail
		puts "Connecting"
		@gmail = Gmail.connect(self.user.email, self.user.pword)
	end

	def check_connection
		if @gmail.logged_in? 
			return true
		else
			puts "There was a log in error.  Try again."
			return false
		end
	end

	def get_contacts_from_gmail
		puts "Getting all contacts from the beginning of August. (This may take some time.)"
		people = []
		@gmail.mailbox("[Gmail]/Sent Mail").find(:after => Date.parse("2013-08-01")).each do |mail|
			email = mail.message.to
			people << email
		end
		people
	end

	def sort_items(arr)
		puts "Sorting"
		freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
		sorted = arr.sort_by { |v| -freq[v] }
	end

	def count_items(arr)
		puts "Here are the contacts most emailed since the beginning of August in descending order:"
		freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
		freq.to_a.each {|h,v| puts "#{h}: #{v}" }
	end

end



