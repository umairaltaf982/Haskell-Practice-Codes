module Class where

import Vector

class VectorCalculation v where
    dotproduct :: v -> v -> Float
    crossproduct :: v -> v -> v