#!/usr/bin/env ruby





#   include Enumerable
#   def initialize(from, to, by)
#     @from, @to, @by = from, to, by
#   end
#
#   def each
#     x = @from
#     while x <= @to
#       yield x
#       x += @by
#     end
#   end
#
#   def length
#     return 0 if @from > @to
#     Integer((@to-@from)/@by) + 1
#   end
#
#   alias size length
#
#   def[](index)
#     return nil if index < 0
#     v = @from + index*@by
#     if v <= @to
#       v
#     else
#       nil
#     end
#   end 
#
#   def *(factor)
#     Sequence.new(@from*factor, @to*factor, @by*factor)
#
#   end
#
#   def +(offset)
#     Sequence.new(@from+offset, @to+offset, @by)
#   end
# end
#
#
# s = Sequence.new(1, 10, 2)
# s.each {|x| print x}
# def are_you_sure?
#   while true
#     print "Are you sure? [y/n]"
#     response = gets.chomp
#     case response
#     when /^[yY]/
#       return true
#     when /^[nN]/
#       return false
#     else
#       puts "Invalid input!"
#     end
#   end
# end
#
# are_you_sure?



# def determine_generation(birthyear)
#   generation = case birthyear
#                when 1946..1963 then "Baby Boomer"
#                when 1964..1976 then "Generation X"
#                when 1978..2000 then "Generation Y"
#                else "Unknown Generation" 
#                end
#   generation
# end
#
# puts "Enter your birth year!"
# birthyear = gets.chomp.to_i
#
# generation = determine_generation(birthyear)
# puts "You belong to #{generation}"
