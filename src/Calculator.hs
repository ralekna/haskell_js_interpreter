module Calculator(
  addOne
, mult
) where

-- (Num x) declares that x Type belongs to Num typeclass
addOne :: (Num x) => x -> x
addOne x = x + 1
mult :: (Num x) => x -> x -> x
mult x y = x * y
