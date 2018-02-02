#!/bin/ruby

n1,n2,n3 = gets.strip.split(' ')
n1 = n1.to_i
n2 = n2.to_i
n3 = n3.to_i
h1 = gets.strip
h1 = h1.split(' ').map(&:to_i)
h2 = gets.strip
h2 = h2.split(' ').map(&:to_i)
h3 = gets.strip
h3 = h3.split(' ').map(&:to_i)
sum_h1 = h1.reduce(:+)
sum_h2 = h2.reduce(:+)
sum_h3 = h3.reduce(:+)
loop do 
     if((sum_h1 == sum_h2) && (sum_h1 == sum_h3))
        break 
    end 
    
    min_val = [sum_h1,sum_h2,sum_h3].min 
    if(sum_h1 != min_val) 
        sum_h1 -= h1.shift 
    elsif(sum_h2 != min_val)
        sum_h2 -= h2.shift 
    elsif(sum_h3 != min_val)
        sum_h3 -= h3.shift 
    end 
   
    
end 
p sum_h1 
