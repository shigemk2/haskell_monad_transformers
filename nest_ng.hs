import Control.Monad.State
import Control.Monad.Reader

test1 x = (`runStateT` x) $ do   -- StateT
    modify (+ 1)
    get >>= test2                -- StateTの中でReaderTを使用

test2 x = (`runReaderT` x) $ do  -- ReaderT
    b <- ask
    lift $ lift $ print $ b + 1  -- 2階層目を想定

main = do
    test1 1                      -- OK
    test2 1                      -- エラー（想定階層の相違）
