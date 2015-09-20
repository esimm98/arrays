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
	
end