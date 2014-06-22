class Numb
	@num
	@num_to_string

	def initialize(dif, num_length)
		@num = Array.new(num_length)
	end

	def generate_random_hex_num
		$rand_num
	end

		$convert_num_to_string
	end

	def rand_num
		@num.each_index do |f|
			@num[f] = rand(16**length).to_s(16) # rand(10...16).to_s(16)
			
		end
		@num[rand(0...@num.length)] = 0
		@num[rand(0...@num.length)] = 0
	end

	def rand_generate(length)
		((0..length).map{rand(256).chr}*"").unpack("H*")[0][0,length]
	end


	def convert_num_to_string
		@num_to_string = [@num].join
		return @num_to_string
	end

	def print_num
		puts @num_to_string
	end
