require 'pry'

# def my_all?(collection)
#   i = 0
#   while i < collection.length
#     i = i + 1   #i += 1 does the same thing. Use this if it's easier for you.
#   end
# end

# def my_all?(collection)
#   i = 0
#   while i < collection.length
#     yield(collection[i])
#     i = i + 1
#   end
# end
# my_all?([1,2,3]) {|i| i < 2}

# def my_all?([1,2,3])
#   i = 0
#   while i < 3
#     yield(1)
#     i = 0 + 1
#   end
# end

# my_all?([1,2,3]) {|1| 1 < 2}
# def my_all?(collection)
#   i = 0
#   block_return_values = []
#   while i < collection.length
#     block_return_values << yield(collection[i])
#     i = i + 1
#   end
# end

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i = i + 1
  end
  
  if block_return_values.include?(false)
    false
  else
    true
  end
end
