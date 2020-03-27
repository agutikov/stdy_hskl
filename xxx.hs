

-- f :: Int -> Int -> Int
-- f x y = x*x + y*y
-- main = print (f 2.2 3.2)


-- f :: Num a => a -> a -> a
-- f x y = x*x + y*y
-- main = print(f 2 3)


evenSum :: Integral a => [a] -> a
-------------------------------------------------------------------------------------
{-

evenSum l = accumSum 0 l

accumSum n l = if l == []
                  then n
                  else let x = head l
                           xs = tail l
                       in if even x
                              then accumSum (n+x) xs
                              else accumSum n xs

-}
-------------------------------------------------------------------------------------
{-
evenSum :: Integral a => [a] -> a

evenSum l = accumSum 0 l
    where accumSum n l = 
            if l == []
                then n
                else let x = head l 
                         xs = tail l 
                     in if even x
                            then accumSum (n+x) xs
                            else accumSum n xs
-}
-------------------------------------------------------------------------------------
{-
evenSum l = accumSum 0 l
    where 
        accumSum n [] = n
        accumSum n (x:xs) = 
             if even x
                then accumSum (n+x) xs
                else accumSum n xs
-}
-------------------------------------------------------------------------------------
{-
evenSum l = foldl mysum 0 (filter even l)
  where mysum acc value = acc + value
-}
-------------------------------------------------------------------------------------

-- evenSum l = foldl (\x y -> x+y) 0 (filter even l)

-- evenSum l = foldl (+) 0 (filter even l)

evenSum = (foldl (+) 0) . (filter even)

-- main = print(evenSum[10, 1, 2, 3, 4, 5])



sum' = foldl (+) 0
one x = 1
map_one = map one
count = sum' . map_one

-- count = (foldl (+) 0) . (map (\x -> 1))

main = print(count([1, 2, 3, 4, 5, 6, 0]))












