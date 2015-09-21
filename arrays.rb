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
		str = str + "#{word}#{sep}" * (count - 1) + word
		str
	end

	def same_ends?(arr, n)
		0.upto(n) do |i|
			if arr[i] == arr[-n + i]
				return true
			else
				return false
			end
		end
	end
	
	def starry?(str)
		index = 0
		0.upto(str.length - 1) do |n|
			index = str.index('*', n)
			if n == 0 || n == str.length - 1
				next
			elsif str[index - 1] == str[index + 1]
				return true
			else
				return false
			end
		end
	end

end