import Control.Monad.State
import Control.Monad.Reader

test1 x = (`runStateT` x) $ do
    modify (+ 1)
    get >>= test2

test2 x = (`runReaderT` x) $ do
    b <- ask
    liftIO $ print $ b + 1        -- 階層深度の影響を受けない

main = do
    test1 1
    test2 1
