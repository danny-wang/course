module FunWithStrings

  def palindrome?
    # 
    if self.downcase.gsub( /\W/ ,'')==self.downcase.gsub( /\W/ ,'').reverse
      return true
    else 
      return false
    end
  end


  def count_words

    # Splits the string into an array getting all word
    array=self.downcase.gsub( /\W/ ,' ').split(' ')
    #create a variable hash reference a hash object 
    h={}
    array.each{
        |item|
      if h[item]
        h[item]=h[item]+1
      else
        h[item]=1
      end
   
    }
    return h
  end

  def anagram_groups

    # your code here
    self.split.group_by{|a| a.chars.sort}.select{|k,v| v.size > 0 }.values
  end

end

# make all the above functions available as instance methods on Strings:

class String

  include FunWithStrings

end
