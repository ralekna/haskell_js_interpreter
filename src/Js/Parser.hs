module Js.Parser(
 reverseList
--,tokenizeString
, extractFirstWord
, splitOnFirstWord
) where

{-
splitList :: [a] -> a -> [[a]]
splitList list@(x:xs) separator
 | list == [] = []
 | x == ' ' = memo:(tokenizeString xs)
-}

extractFirstWord :: (Eq a) => [a] -> a -> [a]
extractFirstWord list@(x:xs) limiter
 | list == [] = []
 | x == limiter = []
 | otherwise = ( let y = (extractFirstWord xs limiter) in [x] ++ y )

-- | take the first word from list
splitOnFirstWord :: (Eq a)    -- ^ anything of Eq
                 => [a]       -- ^ a list of elements that are separated by delimiters
                 -> a         -- ^ element that should be limiter of a word (like space)
                 -> ([a],[a]) -- ^ a tuple containing cut off word and remaining list

splitOnFirstWord list@(x:xs) limiter
 | list == [] = ([],[])
 | x == limiter = ([],xs)
 | otherwise =
         let (y,z) = (splitOnFirstWord xs limiter)
         in  ([x] ++ y, z)


reverseList :: (Eq a) => [a] -> [a]
reverseList list@(x:xs)
 | list == [] = []
 | xs == [] = [x]
 | otherwise = (reverseList xs) ++ [x]
