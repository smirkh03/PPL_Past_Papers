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
leapYear :: Int -> Bool
leapYear x =
  if (x `mod` 400 == 0) then True
  else
       if (x `mod` 100 == 0) then False
       else if (x `mod` 4 == 0) then True
            else False   

lp1Test =
  leapYear 2004 == True &&
  leapYear 1900 == False &&
  leapYear 2000 == True

leapYear2 :: Int -> Bool
leapYear2 x
  | x `mod` 400 == 0 = True
  | x `mod` 100 == 0 = False
  | x `mod` 4 == 0 = True
  | otherwise = False

lp2Test =
  leapYear2 2004 == True &&
  leapYear2 1900 == False &&
  leapYear2 2000 == True

leapYearModelSolution :: Int -> Bool
leapYearModelSolution y = ((y `mod` 4 == 0) && (y `mod` 100 /= 0))
               || (y `mod` 400 == 0)

lp3Test =
  leapYearModelSolution 2004 == True &&
  leapYearModelSolution 1900 == False &&
  leapYearModelSolution 2000 == True

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

