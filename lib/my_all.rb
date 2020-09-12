require 'pry'

def my_all?(collection)
 i_counter = 0
 block_return_values = []
 while i_counter < collection.length
    block_return_values << yield(collection[i_counter])
    i_counter += 1
 end

 if block_return_values.include?(false)
    puts false
    false
  else
    puts true
    true
  end
end

my_all?([1,2,3]) {|i| i < 2}
