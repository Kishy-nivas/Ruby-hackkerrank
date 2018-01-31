


=begin 

url : https://www.hackerrank.com/challenges/2d-array/problem

Output Format

Print the largest (maximum) hourglass sum found in .

Sample Input

1 1 1 0 0 0
0 1 0 0 0 0
1 1 1 0 0 0
0 0 2 4 4 0
0 0 0 2 0 0
0 0 1 2 4 0
Sample Output

19
=end 
#!/bin/ruby

arr = Array.new(6)
for arr_i in (0..6-1)
    arr_t = gets.strip
    arr[arr_i] = arr_t.split(' ').map(&:to_i)
end

col = 0 
ind = 0 
row = 0 
max = -999999 
loop do  
     ans = [ arr[col][ind], arr[col][ind+1], arr[col][ind+2], arr[col+1][ind+1],
        arr[col+2][ind], arr[col+2][ind +1 ], arr[col+2][ind+2] ] 
        ans_sum = ans.reduce(:+)
        if ans_sum > max 
            max =ans_sum
        end 
        ind+=1 
        if(ind> 3)
            col+=1 
            ind=0 
            row+=1 
        end 
        if (row>3)
            break 
        end 
    end 
p max  

