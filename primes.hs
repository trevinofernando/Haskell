--Make a list of size n of every other prime 

--This is the main function to be called
everyOtherPrimeUpTo n = [x | x<-(listPrimes n), x/= 0]

--very hacky way to get every other element in haskell but that was my first idea
--This is basically grabbing 2n primes multiplying it to a list of 1's and 0's [1,0,1,0,1,0,1,0,...1,0] of size 2n
--And on the main function we discard all 0's
listPrimes n = zipWith (*) (take (n*2) primes) (cycle [1,0]) 

--Infinite list of primes
primes = 2 : filter ((==1) . length . primeFactors) [3,5..] 
primeFactors n = factor n primes
  where
    factor n (p:ps) 
        | p*p > n        = [n]
        | n `mod` p == 0 = p : factor (n `div` p) (p:ps)
        | otherwise      = factor n ps
