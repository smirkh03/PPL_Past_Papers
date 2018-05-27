sales :: Int -> Int
sales x =
  0


{-
(i)
using a list comprehension and the function length
-}
zeroWeeks1 :: Int -> Int
zeroWeeks1 x =
  length [ 0 | y <- [0..x], sales y == 0]

-- Need to learn how higher order functions work
{-
(ii)
using any of the standard Haskell functions, but not defining any new recur-
sive functions, not using foldr/foldl, and not using list comprehensions
-}
--zeroWeeks2 :: Int -> Int
--zeroWeeks2 x =
--  length (filter (== 0) (map sales [0..x])

{-
(iii)
by defining a suitable tail-recursive helper-function
-}

{-
(iv)
using foldr, the list [0..n], and no other recursive functions
-}

