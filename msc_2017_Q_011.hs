{-
Question 11 [Answer this question using Haskell] ............................. Total: 10 marks
Write a function time :: [Int] -> Int that takes a list of time durations in minutes and calculates
the time after all those periods of have passed. You should ignore negative durations, presume that
the starting time is 1 o’clock, and that you are using a 12-hour clock. The function should return
the hours of the current time and ignore the remaining minutes. For example:
       time [] = one o'clock
       time [-30,-20] = one o'clock
       time [20,-30,30,14,-20] = two o'clock
       time [200,45] = five o'clock
       time [60,-100,360,-20,240,59] = twelve o'clock
       time [60,-100,360,-20,240,60] = one o'clock

You should not use recursion to solve this problem but you may use basic functions, list 
comprehension, and library functions.
You should include in your answer an indication of how you would go about testing your function.
-}

time :: [Int] -> Int
time xs = (duration `div` 60) `mod` 12 + 1
  where duration = sum [ x | x <- xs, x >= 0 ]


test1 =
     time [] == 1 &&
     time [-30,-20] == 1 &&
     time [20,-30,30,14,-20] == 2 &&
     time [200,45] == 5 &&
     time [60,-100,360,-20,240,59] == 12 &&
     time [60,-100,360,-20,240,60] == 1
