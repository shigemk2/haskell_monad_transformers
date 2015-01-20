import Control.Monad
import Control.Monad.State

sum' xs = (`execStateT` 0) $ do -- execStateT
    forM_ xs $ \i -> do
        modify (+ i)
        v <- get
        -- return v
        lift $ putStrLn $ "+" ++ show i ++ " -> " ++ show v -- lift

main = do
    print =<< sum' [1..5] -- $ → =<<
