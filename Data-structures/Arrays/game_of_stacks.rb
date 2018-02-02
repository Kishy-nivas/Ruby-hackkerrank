#!/bin/ruby

g = gets.strip.to_i
for a0 in (0..g-1)
    n,m,x = gets.strip.split(' ')
    n = n.to_i
    m = m.to_i
    x = x.to_i
    a = gets.strip
    a = a.split(' ').map(&:to_i)
    b = gets.strip
    b = b.split(' ').map(&:to_i)
    # your code goes here
    
a_ind = 0 
sum =0 
b_ind =0 
count =0 
while a_ind < n  do # first stack  
    if sum + a[a_ind] <=x 
        sum += a[a_ind]; 
        a_ind+=1 
        count+=1 
    else 
        break 
    end 
    
end


while(b_ind < m  )  do 
    sum += b[b_ind]
    b_ind += 1 
    while(sum >x && a_ind > 0)do 
        a_ind-=1 
        sum -= a[a_ind]        
    end 
    #puts "a-index = #{a_ind } - b-index = #{b_ind}"
    if (sum <= x and ((a_ind + b_ind) > count) )
        count = a_ind +b_ind                  # current stack 
    end 
        
end

p count 
  
end

    
