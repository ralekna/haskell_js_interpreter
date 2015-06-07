module Js.Parser(
 reverseList
,tokenizeString
) where


tokenizeString :: (String a) => a -> [a]
-- tokenizeString "" = [""]
tokenizeString string@(x:xs) memo
 | string == [] = []
 | memo == [] = reverseList xs
 | xs == [] = memo
 | x == ' ' = memo:(tokenizeString xs)
 | otherwise =


reverseList :: (Eq a) => [a] -> [a]
reverseList list@(x:xs)
 | list == [] = []
 | xs == [] = [x]
 | otherwise = (reverseList xs) ++ [x]
