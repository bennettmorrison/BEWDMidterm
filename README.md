# GMail counter

This is a command line Ruby program authored by Bennett Morrison for the midterm requirement for the General Assembly Back End Web Development course.

This program will log into a Gmail account and count how many times the user has sent an email to a receipient since the beginning of August 2013.

## Requirements

This program requires the Rubyesque Gmail interface from nu7hatch.  [https://github.com/nu7hatch/gmail](https://github.com/nu7hatch/gmail)

You can install it easily by using rubygems:

    sudo gem install gmail
    
Or install it manually:

    git clone git://github.com/nu7hatch/gmail.git
    cd gmail
    rake install

Other information about the gem can be found at [https://github.com/nu7hatch/gmail](https://github.com/nu7hatch/gmail)

## Instructions

To run this program, run 

		ruby main.rb

The instruction text will display and prompt the user for a gmail account and password.  **Note**: I've created a test account that can be used in place of a personal account.

		username: mctester00@gmail.com
		password: t3stt3st

**Warning: If you use your own gmail account, the retrieval process can take approximately 1 minute, depending on how much you email.**

When I test it against my own, it takes ~45 seconds.

## Midterm Requirements

Here is how this program meets the midterm requirements:

* Takes user input and handles bad input (i.e. You expect numbers and they give you a letter). 
_Asks user for log-in information.  If bad information is given, program ends._

* Connects to a 3rd party api where the call varies based on what the user gives you. 
_Connects to Gmail (although not through OAuth), and brings back email of account given._


* Must be object oriented. You must instantiate modeled classes. The only file that can run without classes is your runner. 
_There are three files.  Runner (Main), Request (where most everything happens), and User_


* Push code on Github. _It's on Github._

