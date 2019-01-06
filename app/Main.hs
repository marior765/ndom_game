module Main where

import Lib

main :: IO ()
main = 
    putStrLn "Guess the number!"

    randomNumber = 5 -- genRandge(0, 101)

    loop $ putStrLn "Enter your number:"
           input <- getLine

           putStrLn "You guessed:" ++ input

           result :: Int -> String

           result input = 
            if | input == 4 -> "Wow, very close!"
            if | input == 3 -> "You are quite close!"
            if | input == 2 -> "Not bad, but not enough!"
            if | input == 1 -> "Not even close!"
            if | input == 0 -> "Very cold!"
            if | input == 5 -> "Great!You are won!"
                


