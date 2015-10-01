# When done, submit this entire file.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum=0
  arr.each {|a| sum+=a}
  sum
end

def max_2_sum arr
  # YOUR CODE HERE
  sum=0
  if arr.length==0
	sum=0
  elsif arr.length==1
  	sum=arr[0] 
  elsif arr.length>=2
  	arr.sort!
  	arr.reverse!
  	sum=(arr[0]+arr[1])
  end
  sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

#test function sum

#a=[]
#puts sum a

#test function max_2_sum
#a=[22,45,22,45]
#puts max_2_sum a

