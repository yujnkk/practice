def funcOn nums,s
	if nums == nil || (nums.length == 1&& nums[0] < s)
		return 0
	end
	nums.each do |i|
	if i >= s
		return 1		
	end
	end
	i = 0;
	j = 1;
	min = 999999
	sum = nums[i]+nums[j]
	if sum >= s
		return 2
	end
	while j+1<nums.length
		j= j+1
		sum = sum+nums[j]
		if sum >= s && j-i+1 < min
		   min = j-i+1
		end
		while i < j && sum >= s
			sum = sum - nums[i]
			i = i+1
			if sum >= s && j-i+1 < min
				min = j-i+1
			end
		end
	end 
	min
end
	
nums = [2,3,1,2,4,3]
s = 7

p funcOn nums,s
