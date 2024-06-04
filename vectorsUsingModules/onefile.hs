module Vector(make3DVect, make2DVect, dotproduct, crossproduct) where
data Vect = D3Vect Float Float Float | D2Vect Float Float deriving (Show)
make3DVect :: Float -> Float -> Float -> Vect
make3DVect x y z = D3Vect x y z
make2DVect :: Float -> Float -> Vect
make2DVect x y = D2Vect x y
dotproduct :: Vect -> Vect -> Float
dotproduct (D3Vect x y z) (D3Vect l m n) = x*l + y*m + z*n
dotproduct (D2Vect x y) (D2Vect l m) = x*l + y*m
crossproduct :: Vect -> Vect -> Vect
crossproduct (D3Vect x y z) (D3Vect l m n) = D3Vect (x*l) (y*m) (z*n)
crossproduct (D2Vect x y) (D2Vect l m) = D2Vect (x*l) (y*m)