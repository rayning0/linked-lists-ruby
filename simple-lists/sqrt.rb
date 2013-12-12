class Fixnum
  def sqroot
    i = 1
    x = Math.sqrt(self).to_i
    while i < 200
      #puts "i = #{i}, ans = #{x}"
      x = 0.5 * (x + self / x)
      i += 1
    end  
    x
  end 
end

while true
  puts "Give me number. I'll tell you sqrt. (0 to exit):"
  num = gets.chomp.to_i
  break if num == 0
  puts "Sqrt = #{num.sqroot}"
end