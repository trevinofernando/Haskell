--Create a list from a list of numbers from 1 to n. The numbers must be either a multiple of five or have exactly three factors.
--solution 100 should output [4,5,9,10,15,20,25,30,35,40,45,49,50,55,60,65,70,75,80,85,90,95,100]

--This is the main function to be called
solution n = [x | x<-[1,2..n], x `mod` 5 ==0 || length (factors x) ==3] 

--All factors of n
factors n = [x | x<-[1,2..n], mod n x == 0]
