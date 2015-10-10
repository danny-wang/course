class Dessert

  def initialize(name, calories)
    @name=name
    @calories=calories

  end
  def name
    @name
  end
  def name=  name
    @name=name
  end
  def calories
    @calories
  end
  def calories= calories
    @calories=calories
  end


  def healthy?
    if @calories<200
      return true
    else
      return false
    end
    

  end

  def delicious?
    return true
    # your code here

  end

end

class JellyBean < Dessert

  def initialize(flavor)
    @name=flavor+ " jelly bean"
    @calories=5
    
  end
  def delicious? 
    if @name=="licorice jelly bean"
      return false
    else
      return true
    end
  end

end
