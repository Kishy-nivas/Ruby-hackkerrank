# Enter your code here. Read input from STDIN. Print output to STDOUT

=begin 
url : https://www.hackerrank.com/challenges/dynamic-array/problem
=end 



n,m = gets.split(' ').map(&:to_i)

#initialization 
arr = {}
n.times do |val|
    arr[val] = []
end 

last_value = 0 


m.times do 
    q,x,y = gets.split(' ').map(&:to_i)
    if q==1 
        seq_index = (x^last_value ) % n
        arr[seq_index].push(y)
    else 
        seq_index = (x^last_value) %n 
        last_value = arr[seq_index][y% arr[seq_index].size ]
        p last_value 
    end 
    
end 
