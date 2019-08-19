def hello_t(array)
  if block_given? #if a block was given
  i=0 #same as counter
  while i < array.length 
  yield array[i]#we are yielding each item of the array to the block below 
  i += 1 
  end
  array #returns out original array
else
  puts "Hey! No block was given!" #if no block is given
end
end

#method array items are being yielded too with argument
hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end
