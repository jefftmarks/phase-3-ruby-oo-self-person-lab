require "pry"

class Person
	attr_reader :name, :happiness, :hygiene
	attr_accessor :bank_account

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def happiness=(value)
		@happiness = value.clamp(0, 10)
		# @happiness =
		# if value > 10
		# 	10
		# elsif value < 0
		# 	0
		# else
		# 	value
		# end
	end

	def hygiene=(value)
		@hygiene = value.clamp(0, 10)
		# @hygiene =
		# if value > 10
		# 	10
		# elsif value < 0
		# 	0
		# else
		# 	value
		# end
	end

	def happy?
		@happiness > 7
	end

	def clean?
		@hygiene > 7
	end

	def get_paid(amount)
		self.bank_account += amount
		"all about the benjamins"
	end

	def take_bath
		@hygiene = @hygiene + 4
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		@hygiene = @hygiene - 3
		@happiness = @hygiene + 2
		"♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		@happiness = @happiness + 3
		friend.happiness += 3
		"Hi #{friend.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(friend, topic)
		case topic
		when "politics"
			@happiness = @happiness + 2
			friend.happiness -= 2
			"blah blah partisan blah lobbyist"
		when "weather"
			@happiness = @happiness + 1
			friend.happiness += 1
			"blah blah sun blah rain"
		else
			"blah blah blah blah blah"
		end
	end

end