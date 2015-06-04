module Calculator(
  addOne
, mult
, third
) where

-- (Num x) declares that x Type belongs to Num typeclass
addOne :: (Num a) => a -> a
addOne x = x + 1
mult :: (Num a) => a -> a -> a
mult x y = x * y

-- take third element from tuple
third :: (a,b,c) -> c
third (_,_,c) = c
