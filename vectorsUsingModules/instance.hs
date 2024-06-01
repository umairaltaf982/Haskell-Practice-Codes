module Instance where

import Class
import Vector

instance VectorCalculation Vect where
    dotproduct (TriDVect x y z) (TriDVect l m n) = x * l + y * m + z * n
    dotproduct (TwoDVect x y) (TwoDVect l m) = x * l + y * m

    crossproduct (TriDVect x y z) (TriDVect l m n) = TriDVect (x * l) (y * m) (z * n)
    crossproduct (TwoDVect x y) (TwoDVect l m) = TwoDVect (x * l) (y * m)