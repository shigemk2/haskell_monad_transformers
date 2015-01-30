import Control.Monad.State
import Control.Monad.Reader

test1 x = (`runStateT` x) $ do
    modify (+ 1)
    a <- get
    (`runReaderT` a) $ do
        b <- ask
        lift $ lift $ print $ b + 1  -- 修正

main = do
    test1 1
