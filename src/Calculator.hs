module Calculator(
  addOne
, mult
, third
, takeOne
, (***)
, matchWholeList
) where

-- (Num x) declares that x Type belongs to Num typeclass
addOne :: (Num a) => a -> a
addOne x = x + 1
mult :: (Num a) => a -> a -> a
mult x y = x * y

-- take third element from tuple
third :: (a,b,c) -> c
third (_,_,c) = c

takeOne :: (Show a) => [a] -> Int -> a
takeOne list index = list !! index

param1 *** param2 = (show param1) ++ " times " ++ (show param2)

matchWholeList :: [Char] -> [Char]
matchWholeList list@(x:y:_)
  | x == 'l' && y == 'a' = "Labas"
  | x == 'a' && y == 't' = "Ate"
  | otherwise = "Bye"