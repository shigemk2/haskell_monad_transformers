import Control.Monad
import Control.Monad.State

fact x = (`execStateT` 1) $ do
    forM_ [1..x] $ \i ->
        modify (* i) >>= \_ ->
        get >>= \v ->
        lift $ putStrLn $ "*" ++ show i ++ " -> " ++ show v

main = fact 5 >>= print
