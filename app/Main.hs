-- heavily inspired & borrowing from :http://www.defmacro.org/ramblings/lisp-in-haskell.html

module Main where

import Lib

main :: IO ()
main = someFunc

-- some type defn for an 's-expression'

-- the s-expression is the fundamental building block of lisp
-- everything in parens is an s-expression
-- an s-expression is a list of number, strings, functions, or more lists
-- a nested list is itself an s-expression
data SExpr =
    | LNum Integer
    | LStr String
    | LFn  ([SExpr]->SExpr)
    | LList [SExpr]

instance Show SExpr where
    show (LNum x) = show x
    show (LStr x) = x
    show (LFn x) = "<function>"
    show (LList x) = "( " ++ unwords (map show x) ++ ")"
-- need 'map' to iterate the list (we can't recurse directly)
-- unwords just concats maps' [String] into a single space-separated String



-- parsing



-- evaluation
--  wrapping simple math fns
--  logic fns are easy start
--  then move onto list functions (list, car, cdr)



-- variables



-- error handling
--  ErrorT monad


-- control structues (special forms)
--  StateT monad


