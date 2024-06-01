module Vector(make3DVect, make2DVect, Vect(TriDVect, TwoDVect)) where

data Vect = TriDVect Float Float Float | TwoDVect Float Float
 deriving Show

make3DVect :: Float -> Float -> Float -> Vect
make3DVect x y z = TriDVect x y z

make2DVect :: Float -> Float -> Vect
make2DVect x y = TwoDVect x y