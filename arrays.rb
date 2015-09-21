module Arrays

	def middles(array1, array2)
		return [array1[1], array2[1]]
	end

	def max(arr)
		num = arr[0]
		arr.each do |n|
			num = n if n > num
		end
		return num
	end

	def lucky13?(arr)
		!arr.include?(1) && !arr.include?(3)
	end

	def repeat_separator(word, sep, count)
		str = ""
		str = str + "#{word}#{sep}" * (count - 1)
		str = str + word
		str
	end
	
end