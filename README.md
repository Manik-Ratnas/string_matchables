# StringMatchables

A gem to find matches for your strings. 
## Installation

Add this line to your application's Gemfile:

    gem 'string_matchables'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install string_matchables

## Usage

This is a simple gem to provide different matches for a string. It defines a module which uses predefined algorithm to generate an array of strings which can be used as indexes while developing advance searches. 

Once you install it, Your String objects will have a matches method which will return an array of all strings matching the given string. 


	irb(main):001:0> "Tata Consulting Services".matches
	=> ["TataConsultingServices", "Tata Consulting Services", "Tata", "Consulting", "Services", "T C S", "T.C.S", "T-C-S","TCS"]

## Contributing

1. Fork it ( http://github.com/Manik-Ratnas/string_matchables/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


:collision: :collision: :collision: