module Main(
  main
) where

import Calculator(addOne, third, takeOne, (***), matchWholeList)

main = do
  print( addOne(2) )
  print( (third ('q','w','e') ) )
  print( takeOne [7,8,9] 2 )
  print( 2 *** 3 )
--  matchWholeList 'l':'a':[]
--  matchWholeList 'a':'t':[]
  print( matchWholeList "la" )
  print( matchWholeList "at" )
  -- don't forget that main can return only IO!
