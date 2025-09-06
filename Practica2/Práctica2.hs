{- Función: sayHello
Descripción: Función que recibe una cadena de texto y devuelve la concatenación con Hello!.
-}

sayHello :: String -> String
sayHello nombre = "Hello "  ++ nombre ++ "!"

{- Función: calcularPropina
Descripción: Calcula la propina a partir de una cuenta que por defecto se deja el 10 o 15%.
-}

calcularPropina :: Float -> Float
calcularPropina calcular = calcular * 0.15

{- Función: menor
Descripción: Que recibe 3 números y devuelve el menor de ellos.
-}

menor :: Int -> Int -> Int -> Int
menor x y z = if x <= y && x <= z
  then x
  else if y <= x && y <= z
  then y
  else z

{- Función: decide
Descripción: Recibe un booleano y dos cadenas. Si el valor booleano es True, devuelve la primera cadena, de lo contrario devuelve la segunda. 
-}

decide :: Bool -> String -> String -> String
decide cadena s1 s2 = if cadena then s1 else s2  

{- Función: esDescendiente
Descripción: Recibe cuatro parámetros de tipo entero x, y, z y w. La función debe devolver un valor de tipo booleano de acuerdo a los siguientes casos:

        • True, si los números fueron ingresados de manera descendente.
        • False, si los números no fueron ingresados de manera descendente.
-}

esDescendiente :: Int -> Int -> Int -> Int -> Bool
esDescendiente x y z w = x > y && y > z && z > w

{- Función: esDivisible
Descripción: Recibe dos parámetros de tipo entero, es decir x, y y devolver una salida del estilo "x es divisible por y".
-}

esDivisible :: Int -> Int -> String
esDivisible x y = if y == 0
  then "no se puede dividir entre 0" 
  else if x `mod` y == 0
  then show x ++ " es divisible por " ++ show y
  else show x ++ " no es divisible por " ++ show y

  {- Función: hipotenusa
Descripción: Recibe dos parámetros de tipo flotante b y h donde b representa la base y h la altura. La función debe devolver un valor de tipo flotante que representa el valor de la hipotenusa que se calcula respecto a la base y altura del triánfulo rectángulo.
-}

hipotenusa :: Float -> Float -> Float
hipotenusa b h = sqrt (b^2 + h^2)

{- Función: pendiente
Descripción: Esta función recibe dos parámetros que serán tuplas de dos elementos de tipo flotante respectivamente, es decir, (x1, y1) y (x2, y2). pendiente debe devolver un valor de tipo flotante que represente la pendiente de la recta que pasa por dos puntos.
-}

pendiente :: (Float, Float) -> (Float, Float) -> Float
pendiente (x1, y1) (x2, y2) = (y2 - y1) / (x2 - x1)

{- Función: distanciaPuntos
Descripción: Recibe dos parámetros que serán tuplas de dos elementos de tipo flotante respectivamente, es decir, (x1, y1) y (x2, y2). La función devuelve un valor de tipo flotante que representa la distancia entre los puntos (x1, y1) y (x2, y2)
-}

distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (x1, y1)  (x2, y2) = sqrt ((x2 - x1)^2 + (y2 - y1)^2)

-- EXTRA

{- Función: cuadrados
Descripción: debe recibir como parámetro una tupla de tipo entera y devolver una tupla de los cuadrados del parámetro.
-}

cuadrados :: [Int] -> [Int]
cuadrados list = [x^2 | x <- list]
