{-- Este modulo provee las funcionalidades basicas del TP, se deben implementar todas las funciones
    que estan indefinidas.
-}
-- Nombre: Pilar Gallardo
-- DNI : 46375589
-- Comision : 2

module TP1 (factorizar, divide, divisores, esPrimo, divisoresPrimos, comprimir) where
import GHC.Stack.CCS (whereFrom)

-- | Dados dos enteros X e Y, retorna True si X divide a Y, caso contrario False
divide :: Int -> Int -> Bool
divide x y = if x `mod` y == 0 then True else False   

-- | Dado un número X, retorna la lista de todos los divisores de X.
-- Ej: divisores 10 = [1,2,5,10]
divisores :: Int -> [Int]
divisores x = [n | n <- [1..x], x `mod` n == 0]

-- | Dado un número, determina si es un número primo.
esPrimo :: Int -> Bool
esPrimo x = if divisores x == [1,x] then True else False

-- | Dado un número X, retorna la lista de todos los divisores primos de X.
-- Ej: divisoresPrimos 10 = [2,5]
divisoresPrimos :: Int -> [Int]
divisoresPrimos 1 = []
divisoresPrimos x = [p | p <- divisores x , esPrimo p] 

-- | Dada una lista de números, comprime la lista contando las repeticiones adyacentes.
-- Ej: comprimir [2,2,2,5,2,2] = [(2,3), (5,1), (2,2)]
comprimir :: [Int] -> [(Int, Int)]
comprimir [] = []
comprimir (x:xs) = contador x 1 xs

contador :: Int -> Int -> [Int] -> [(Int,Int)]
contador num cont [] = [(num,cont)]
contador num cont (y:ys)
        |num == y = contador num (cont + 1) ys
        |otherwise = (num, cont) : contador y 1 ys


-- | Función principal. 
-- Implementar usando las funciones previas, funciones definidas en Haskell y toda otra función auxiliar que sea necesaria.
-- Ej: factorizar 118800 = [(2,4),(3,3),(5,2),(11,1)]
factorizar :: Int -> [(Int,Int)]
factorizar = undefined
