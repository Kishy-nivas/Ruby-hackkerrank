# Enter your code here. Read input from STDIN. Print output to STDOUT

=begin  

url https://www.hackerrank.com/challenges/sparse-arrays/problem
=end 




n = gets.to_i 
hash = Hash.new(0)       # default value, if we haven't seen this string 


n.times do 
    val = gets.strip()
    hash[val]+=1 
end 

q = gets.to_i 

q.times do 
    val = gets.strip() 
    p hash[val]
end 

