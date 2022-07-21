# module  Demo
#   def method_name
#     puts 'THIS IS MY CLASS METHOD'
#   end

# end

#  class Hello
#   include Demo
#   def method_first
#     puts "This is my method second"
#   end
# end


# obj = Hello.new
# obj.method_name
# obj.method_first


# class Demo
#   def name(*a)
#     puts 'heloo' + a.join(' ')
#   end
# end

# obj =Demo.new
# obj.send :name , "heloo" , "hiii"

# class Demo
# def method_name
#    "This is heloo"
# end
# end
# puts Demo.new.method_name

# def foo
#   raise
#   puts "Oups"
# end
# foo rescue
# puts "Hello"



# class Demo
#   def method_first(day)
# begin
# raise "Ruby Exception"
#   case day
#     when 1
#       puts 'monday'
#     when 2
#       puts 'tue'
#     when 3
#       puts 'wed'
#     when 4
#       puts 'tues'
#     when 5
#       puts 'fri'
#     when 6
#       puts 'saturday'
#     when 7
#       puts 'saturday'
#   end

# rescue Exception => a
# puts a.to_s
# end
# end
# end


# obj = Demo.new
# obj.method_first(2)



begin
raise
day = 5
case day
    when 1
      puts 'monday'
    when 2
      puts 'tue'
    when 3
      puts 'wed'
    when 4
      puts 'tues'
    when 5
      puts 'fri'
    when 6
      puts 'saturday'
    when 7
      puts 'saturday'
end
rescue Exception => a
puts
puts a.to_s
end
