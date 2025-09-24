module Mati (Matrioska(Mati, Cont), mayorIgual) where

data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

{- Función: mayorIgual
Descripción: Compara dos matrioskas y devuelve la matrioska que esta dentro.
Uso: •mayorIgual Mati Mati = True
     •mayorIgual (Cont (Cont Mati)) (Cont (Cont (Cont Mati))) = False 
-}

mayorIgual :: Matrioska -> Matrioska -> Bool
mayorIgual Mati Mati = True 
mayorIgual Mati (Cont _) = False
mayorIgual (Cont _) Mati = True
mayorIgual (Cont x) (Cont y) = mayorIgual x y

{- Función: aplana
Descripción: Convierte una matrioska anidada en una lista plana de todas las matrioskas que la componen, desde la más externa hasta la más interna.
Uso: •aplana Mati = [Mati]
     •aplana (Cont (Cont Mati)) = [Cont (Cont Mati), Cont Mati Mati]
-}