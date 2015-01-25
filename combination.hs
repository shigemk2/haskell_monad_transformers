import Control.Monad.State

a :: StateT String IO ()
a = do
    v <- get             -- Stateアクション
    lift $ print v       -- IOアクション

main = do
    runStateT a "hello"
