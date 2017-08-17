class Check

	def initialize (card_number)
		@card_number = card_number
	end

	def reverse_card_number
		@card_number.reverse.split(//).map(&:to_i)
	end

	def double_every_other_number
		reverse_card_number.each_with_index.map do |number, index|
			if index.odd?
				number * 2
			else
				number
			end
		end
	end

	def sum_digits
		total_sum = 0
		double_every_other_number.map do |number|
			if number > 9
				total_sum += number.to_s.scan(/\w/).map(&:to_i).reduce(:+)
			else
				total_sum += number
			end
		end
		total_sum
	end

	def divide_by_ten
		response = "The number is "
		if sum_digits % 10 == 0
			response += "valid!"
		else
			response += "invalid!"
		end
		response
	end

end
