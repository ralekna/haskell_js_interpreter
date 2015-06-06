module js.Parser(

) where

tokenizeString :: String -> [String]
tokenizeString string
 | string == "" = [""]