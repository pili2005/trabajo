{-- Este modulo provee el punto de entrada del programa, toma parametros de la linea de comandos y
    llama a la función principal.
-}

module Main (main) where
import System.Environment (getArgs)
import TP1

main :: IO ()
main = do
    args <- getArgs
    case args of
        [arg] -> do
            let numero = read arg :: Int
            let resultado = factorizar numero
            putStrLn ("La factorización es: " ++ show resultado)
        _ -> error $ "Faltan datos. Ejecutar: stack run <numero>"