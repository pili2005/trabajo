import TP1
import Test.QuickCheck
import System.Exit (exitFailure, exitSuccess)

factorizar_prop :: Int -> Property
factorizar_prop n = n > 1 ==> foldl (*) 1 (map (\(a,b) -> a^b) (factorizar n)) == n

factores_primos_prop :: Int -> Property
factores_primos_prop n = n > 1 ==> all (\(a,_) -> esPrimo a) (factorizar n)

main :: IO ()
main = do
    result1 <- quickCheckResult factorizar_prop
    result2 <- quickCheckResult factores_primos_prop
    if all isSuccess [result1, result2]
    then exitSuccess
    else do
        putStrLn "Al menos un test fallo"
        exitFailure