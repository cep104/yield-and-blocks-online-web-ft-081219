def hello_t(array)
    if block_given?
      i = 0
   
      while i < array.length
        yield(array[i])
        i = i + 1
      end
   
      array
    else
      puts "Hey! No block was given!"
    end
  end

  #look at tests for what how the informaton is getting yielded
  #You've already worked with enumerator methods like #each and #collect. 
  #These methods are called on collections, such as arrays. 
  #They take blocks as their arguments and yield each element of the collection to the block, allowing the code in the block to be applied to each element of the collection.

# hello_t(["Tim", "Tom", "Jim"]) do |name|
#     if name.start_with?("T")
#       puts "Hi, #{name}"
#     end
#   end

# call your method here!

