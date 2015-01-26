import Control.Monad
import Control.Monad.State

fact x = (`execStateT` 1) $
    forM_ [1..x] $ \i ->
        modify' (* i) `bind` \_ ->
        get' `bind` \v ->
        lift' $ putStrLn $ "*" ++ show i ++ " -> " ++ show v

main = fact 5 >>= print
