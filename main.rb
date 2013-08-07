require_relative 'lib/Request' 

def start_request
	puts "Hello.  This is the Gmail counting program."
	puts "This program will count the number of times you have emailed a person since the beginning of August."
	puts "Let's go"
	request = Req.new
	request.start
end

start_request