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
  len=0
  i=0
  if arr.length==0 && n==0
    return true
  end
  while i<arr.length   do
    left=n-arr[i]
    if arr.include?(n)|| arr.include?(left)
      return true
    end
    i=i+1
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /^[bcdfghjklmnpqrstvwxyz]/i.match s
    return true
  else 
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if /^0b[01]*/.match s
    if Integer(s)%4==0
      puts "The binary number transforms to decimal number is: #{Integer(s)}"
      return true
    else
      puts "Your binary number is not a multiple of 4!"
      return false
    end
  else
    puts "The parameter is not a binary number, please check it."
    return false
  end

end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(id,price)
    begin
      if id.empty? || price<=0
        raise ArgumentError, "Your isbn is empty or price is less than or equal 0."
        
      end
    rescue Exception => e
      puts  e.message
      puts  e.backtrace.inspect
    end   
    @isbn=id
    @price=price
  end

  def set_isbn id
    @isbn=id
  end
  def get_isbn 
    puts "The isbn of current book is: #{@isbn}"
  end
  def set_price a
    @price=a
  end
  def get_price
    puts "The price of current book is: #{@price}"
  end

  def price_as_string
    str=String.new("$")
    str<<format("%.2f",@price).to_s
  end
end

#test function sum
#a=[]
#puts sum a

#test function max_2_sum
#a=[22,45,22,45]
#puts max_2_sum a

#test function sum_to_n?
# a=[]
# puts sum_to_n? a,0    #result should be true
# b=[23]
# puts sum_to_n? b,23
# c=[12,23,89,56,5,2,3]
# puts sum_to_n? c,145
# d=[-12,2,6,-56,23]
# puts sum_to_n? d,-5

#test the function hello
# name= String.new("Alice")
# puts hello name

#test the function starts_with_consonant? s
# s="!ious sdfasdf"
# puts starts_with_consonant? s

#test the function binary_multiple_of_4? s
# s="0b10000"
# puts binary_multiple_of_4? s
# s="123131341414"
# puts binary_multiple_of_4? s
# s="0x233434ff"
# puts binary_multiple_of_4? s
# s="asdfasdfasdf"
# puts binary_multiple_of_4? s
# s="0b10001"
# puts binary_multiple_of_4? s


#test class BookInStock
# book1=BookInStock.new "123-4123-1234123" ,12
# book2=BookInStock.new "123-4123-1234123" ,45.23
# puts book2.price_as_string
# puts book2.get_price
# book2.set_price 89.12
# puts book2.get_price
# book2.get_isbn
# book2.set_isbn  "456-789-1223"
# book2.get_isbn