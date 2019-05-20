class Braces
  attr_accessor :braces_string

  def initialize(input)
    @braces_string = input
  end
  
  def valid_braces?
    i = 0
    balance_stack = []
    rear = 0
    
    while(i < @braces_string.length )    
      if(@braces_string[i] == '{' || @braces_string[i] == '(' || @braces_string[i] == '[')
        balance_stack.push(@braces_string[i])
      else
          if( balance_stack.length == 0 )
              return false
          elsif((@braces_string[i] == '}' && balance_stack[balance_stack.length - 1] == '{') || (@braces_string[i] == ')' && balance_stack[balance_stack.length - 1] == '(') || (@braces_string[i] == ']' && balance_stack[balance_stack.length - 1] == '['))
              balance_stack.pop()
          else
            return false
          end
      end
      i += 1
    end
  
    if(balance_stack.length == 0)  
      return true
    else
      return false
    end
  
  end
end


ob1 = Braces.new("[({})](]")
puts(ob1.valid_braces?)


