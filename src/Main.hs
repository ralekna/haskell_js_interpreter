module Main(
  main
, addOne
) where

import Calculator(addOne, third)

main = do
  print( addOne(2) )
  print( third(('q','w','e')) )
