module Main where

import Lib
import System.Random

main :: IO ()
main = do
    putStrLn "Guess the number!"

    let randomNumber = randomRIO (1, 10)

    result :: Int -> (String, Function)

    input <- getLine

    let result input = 
        if | randomNumber % input == (0.9..0.8) -> "Wow, very close!"
        if | randomNumber % input == (0.79..0.6) -> "You are quite close!"
        if | randomNumber % input == (0.59..0.4) -> "Not bad, but not enough!"
        if | randomNumber % input == (0.39..0.1) -> "Not even close!"
        if | randomNumber % input == (0.1..0) -> "Very cold!"
        if | randomNumber % input == 1 -> "Great!You are won!"

    -- num <- randomIO :: IO Float
    -- print $ pureFunction num

    -- randomNumber = 5 -- genRandge(0, 101)

    -- loop $ putStrLn "Enter your number:"
    --        input <- getLine

    --        putStrLn "You guessed:" ++ input




