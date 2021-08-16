# TheAnswerIs42

If you're given a set amount of money and can give it back with the pre-established rules and have 42 in the end, you keep the money.

RULES:  
1 - if m is even, then return m/2 euros;  
2 - if m is a multiple of 3 or 4 then multiply the last two digits of m and return that quantity in euros;  
3 - if m is a multiple of 5 then return exactly 42 euros;  

INPUT:  
n - the initial sum of money

OUTPUT:  
p - the least number of steps used to get to 42
BAD LUCK - if the algorithm cannot get to 42 with the initial sum and rules

LIMITS:  
0 < n < 1000000
