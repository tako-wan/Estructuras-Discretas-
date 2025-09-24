-- Funciones auxiliares

module Aux (suma_natural, multi_natural, tamanio) where

import Natural   
import Mati

-- Función suma_natural que calcula la suma de dos Nat

suma_natural :: Natural -> Natural -> Natural
suma_natural Cero n = n
suma_natural (S m) n = suma_natural m (S n)

-- Función multi_natural que calcula el producto de dos naturales

multi_natural :: Natural -> Natural -> Natural
multi_natural Cero n = Cero
multi_natural (S m) n = suma_natural n (multi_natural m n)

-- Función tamanio que calcula el tamaño de una Matrioska 

tamanio :: Matrioska -> Int
tamanio Mati = 1
tamanio (Cont m) = 1 + tamanio m

