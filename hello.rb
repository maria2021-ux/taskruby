class Stack
  def initialize
    @stack = []           
    @max_stack = []       
    @sum = 0               
  end

 
  def push(number)
    @stack.push(number)
    @sum += number        

   
    if @max_stack.empty? || number >= @max_stack.last
      @max_stack.push(number)
    else
      @max_stack.push(@max_stack.last)
    end
  end

 
  def pop
    return nil if @stack.empty? 

    popped_number = @stack.pop
    @max_stack.pop
    @sum -= popped_number     
    popped_number
  end

 
  def max
    return nil if @max_stack.empty? 

    @max_stack.last
  end
end

class Extras < Stack
 
  def mean
    return 0 if @stack.empty?  

    @sum.to_f / @stack.size   
  end
end


stack = Extras.new

# Push numbers 
stack.push(20)
stack.push(400)
stack.push(80)
stack.push(330)
stack.push(2000)
stack.push(900)
stack.push(650)
stack.push(50)
stack.push(2)


puts "Max value: #{stack.max}"   
puts "Mean value: #{stack.mean}"  


puts "Popped values (FILO):"
while (popped = stack.pop)
  puts popped
end
