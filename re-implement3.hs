import Control.Monad
import Control.Monad.State

a `bind` b = StateT $ \s ->
    runStateT  a    s >>= \(r, s1) ->
    runStateT (b r) s1

get' = StateT $ \s -> return (s, s)
modify' f = StateT $ \s -> return ((), f s)
lift' m = StateT $ \s -> m >>= \a -> return (a, s)

fact x = (`execStateT` 1) $
    forM_ [1..x] $ \i ->
        modify' (* i) `bind` \_ ->
        get' `bind` \v ->
        lift' $ putStrLn $ "*" ++ show i ++ " -> " ++ show v

main = fact 5 >>= print
