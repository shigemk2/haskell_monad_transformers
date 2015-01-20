import Control.Monad
import Control.Monad.State

sum' xs = (`execState` 0) $ do
    forM_ xs $ \i -> do
        modify (+ i)
        v <- get
        putStrLn $ "+" ++ show i ++ " -> " ++ show v  -- エラー

main = do
    print $ sum' [1..5]

-- state_io.hs:5:5:
--     Couldn't match type `IO'
--                   with `StateT s0 Data.Functor.Identity.Identity'
--     Expected type: State s0 ()
--       Actual type: IO ()
--     In a stmt of a 'do' block:
--       forM_ xs
--       $ \ i
--           -> do { modify (+ i);
--                   v <- get;
--                   .... }
--     In the second argument of `($)', namely
--       `do { forM_ xs $ \ i -> do { ... } }'
--     In the expression:
--       (`execState` 0) $ do { forM_ xs $ \ i -> do { ... } }
