{-
4 - part (a)
Write a function
       leapYear :: Int -> Bool
that returns true if the year is a leap year, and false otherwise. The following rules decide 
which years are leap years:
• Every year divisible by 4 is a leap year, except
• Every year divisible by 100 is not a leap year, except
• Every year divisible by 400 is still a leap year.

For example, 2004 was a leap year (divisible by 4), 1900 was not a leap year (divisible by 100), 
and 2000 was a leap year (divisible by 400).
-}


{-
4 - part (b)
Write a function
       f :: Int -> [Int] -> [Int]

that replaces every second element of a list, starting with the first, with a given item.
The resulting list should have the same length as the argument list and should begin with the 
item, followed by the second element of the list, followed by the item, followed by the fourth 
element of the list, followed again by the item, and so on. For example:
-}

f :: Int -> [Int] -> [Int]
f x xs = [if (even pos) then x else val | (pos, val) <- xy]
  where xy = zip [0,1..] xs

test =
  f 0 [1,2,3,4,5] == [0,2,0,4,0] &&
  f 0 [1,2,3,4] == [0,2,0,4] &&
  f 0 [] == [] &&
  f 0 [7] == [0]

{-
provided solution
-}

isEven :: Int -> Bool
isEven i = i `mod` 2 == 0

f1 :: Int -> [Int] -> [Int]
f1 y xs = [if isEven i then y else x | (i, x) <- zip [0,1..] xs]

test2 =
  f1 0 [1,2,3,4,5] == [0,2,0,4,0] &&
  f1 0 [1,2,3,4] == [0,2,0,4] &&
  f1 0 [] == [] &&
  f1 0 [7] == [0]

