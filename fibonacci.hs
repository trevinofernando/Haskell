--This function will take a single integer parameter. It indicates the maximum 
--value of Fibonacci numbers that will be in the list. The final solution will 
--be a list of Fibonacci numbers that have a three as their right-most digit and are less than or equal to n.
--fibUpTo 100 should output [3,13]
--fibUpTo 10000 should output [3,13,233]


--This is the main function to be called
fibUpTo n = [x | x<-(takeWhile (<=n) fibList), mod x 10 == 3]

--Infinite list of Fibonacci Numbers 
fibList = 1: 1 : [a + b | (a, b) <- zip fibList (tail fibList)]
