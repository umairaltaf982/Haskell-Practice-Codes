module Exec where

import Class
import Instance
import Vector

main :: IO()
main = do
    let g = make3DVect 1 2 3
    let j = make3DVect 5 6 7
    let r = make2DVect 9 8
    let s = make2DVect 5 6
    print $ dotproduct g j
    print $ dotproduct r s
    print $ crossproduct g j
    print $ crossproduct r s