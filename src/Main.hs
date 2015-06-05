module Main(
  main
, addOne
) where

import Calculator(addOne, third, takeOne)

main = do
  print( addOne(2) )
  print( (third ('q','w','e') ) )
  print( takeOne [7,8,9] 2 )
