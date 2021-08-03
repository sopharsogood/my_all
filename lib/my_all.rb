require 'pry'

def my_all?(collection)
  index = 0
  all_return = true
  while index < collection.length
    if !!yield(collection[index]) == false
        all_return = false
    end
    index += 1
  end
  all_return
end

# slightly different from the solution the readme suggested, I wanted to do it without relying on #include?