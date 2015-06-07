module Js.Parser(
 reverseList
) where

{-
tokenizeString :: (String a) => a -> [a]
-- tokenizeString "" = [""]
tokenizeString string@x:xs memo
 | memo == [] = tokenizeString xs
 | string == [] = memo
 | x == ' ' = memo:(tokenizeString xs)
 | otherwise =
-}

reverseList :: (Eq a) => [a] -> [a]
reverseList list@(x:xs)
 | list == [] = []
 | xs == [] = [x]
 | otherwise = (reverseList xs) ++ [x]
