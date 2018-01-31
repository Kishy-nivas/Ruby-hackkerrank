#!/bin/ruby



=begin 
url: https://www.hackerrank.com/challenges/balanced-brackets/problem
=end 


def isBalanced(s)
    # Complete this function
      stack = []
    s.each_char do |val| 
        if val == '(' or val =='{' or val =='['
            stack.push(val)
        else   
            if stack.last =='(' and val == ')'
                stack.pop 
            elsif  stack.last =='[' and val ==']'
                stack.pop 
            elsif stack.last == '{' and val == '}'
                stack.pop
            else    
                return "NO"
            end 
        end 
    end 
    if stack.size ==0 
        return "YES"
    else 
        return "NO"
    end 
end

t = gets.strip.to_i
for a0 in (0..t-1)
    s = gets.strip
    result = isBalanced(s)
    puts result
end
