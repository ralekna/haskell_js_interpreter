module Main(
  main
) where

import Calculator(addOne, third, takeOne, (***), matchWholeList)
import Js.Parser(reverseList, extractFirstWord, splitOnFirstWord)

main = do
  print( addOne(2) )
  print( (third ('q','w','e') ) )
  print( takeOne [7,8,9] 2 )
  print( 2 *** 3 )
--  matchWholeList 'l':'a':[]
--  matchWholeList 'a':'t':[]
  print( matchWholeList "la" )
  print( matchWholeList "at" )
  print( matchWholeList "hell" )
  print( reverseList "Rytis" )
  print( extractFirstWord "one two" ' ' )
  print( splitOnFirstWord "vienas du trys" ' ' )
  print( splitOnFirstWord [2,3,4,5,0,1,6,4] 0 )
  -- don't forget that main can return only IO!

