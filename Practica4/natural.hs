module Natural (Natural(Cero, S) , a_natural, a_entero,potenciaNat, facNat) where

data Natural = Cero | S Natural deriving (Eq, Show) 

-- Función suma_natural

suma_natural :: Natural -> Natural -> Natural
suma_natural Cero n = n
suma_natural (S m) n = suma_natural m (S n)

--Función multi_natural

multi_natural :: Natural -> Natural -> Natural
multi_natural Cero n = Cero
multi_natural (S m) n = suma_natural n (multi_natural m n)

{- Función: a_natural
Descripción: Toma un entero (0,1,2...) y lo lleva a su estructura de dato Natural.
Uso: • a_natural 0 = Cero
     • a_natural 2 = Suc ( Suc Cero)
-}

a_natural :: Int -> Natural
a_natural n
 | n <= 0 = Cero
 | otherwise = S (a_natural (n - 1))

{- Función: a_entero
Descripción: Lleva un dato Natural a su valor entero.
Uso: • a_entero Cero = 0
     • a_entero S ( S ( S Cero)) = 3
-}

a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n 

{- Función: potenciaNat
Descripción: Eleva un número natural a la potencia del segundo.
Uso: potenciaNat (S (S (S Cero))) (S (S Cero)) = S (S (S (S (S (S (S (S (S Cero))))))))
-}

potenciaNat :: Natural -> Natural -> Natural
potenciaNat _ Cero = S Cero
potenciaNat b (S n) = multi_natural b (potenciaNat b n)  

{- Función: facNat
Descripción: Devuelve el natural de un natural dado.
Uso: facNat (S (S (S Cero))) = (S (S (S (S (S (S Cero))))))
-}

facNat :: Natural -> Natural 
facNat Cero = S Cero
facNat (S n) = multi_natural (S n) (facNat n)
