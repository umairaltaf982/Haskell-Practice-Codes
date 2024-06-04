import Onefile
main = do
 let g = make3DVect 1 9 5
 let j = make2DVect 6 1
 let h = make3DVect 2 1 9
 let i = make2DVect 9 1
 print $ dotproduct g h
 print $ crossproduct g h
 print $ dotproduct i j
 print $ crossproduct i j