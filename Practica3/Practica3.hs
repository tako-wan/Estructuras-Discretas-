{- Función: creditos
Descripción: Toma un entero y regresa la materia que tiene esos respectivos créditos,en este caso toma como referencia las materias del primer semestre de la carrera Ciencias de la computacion.
Uso: creditos 12 = [Introduccion a las CC], creditos 10 = [Estructuras Discretas, ALgebra Superior]
-}

creditos :: Int -> [String]
creditos n
 | n == 4 = ["Ingles I"]
 | n == 10 = ["Estructuras D" , "Algebra Superior"]
 | n == 12 = ["ICC"]
{- Función: negativos
Descripción: Cuenta los números negativos de una lista.
Uso: negativos [-1, 2, 4, 6, -4] = 2
-}
 
negativos :: [Int] -> Int
negativos xs = length [x | x <- xs, x < 0]

{- Función: primos
Descripción: Devuelve los números de una lista
Uso: primos [1...20] = [2, 3, 5, 7, 11, 13, 17, 19]
-}

esPrimo :: Int -> Bool
esPrimo n
 | n < 2 = False
 | otherwise = null [x | x <- [2 .. n-1], n `mod` x == 0 ]

primos :: [Int] -> [Int]
primos xs = [x | x <- xs, esPrimo x]

{- Función: conjuntoLista
Descripción: Recibe una lista de cualquier tipo y devuelve una lista sin elementos repetidos a partir de la lista original
Uso: conjuntoLista [1, 2, 2, 1, 3] = [1, 2, 3]
-}

conjuntoLista :: (Eq a) => [a] -> [a]
conjuntoLista [] = []
conjuntoLista (x:xs)
 | x `elem` xs = conjuntoLista xs
 | otherwise = x : conjuntoLista xs
